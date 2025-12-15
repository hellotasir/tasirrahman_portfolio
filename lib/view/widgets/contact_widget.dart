import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  static const _spacing = SizedBox(width: 4);

  static final List<_ContactLink> _links = [
    _ContactLink(
      label: 'GitHub',
      uri: Uri.parse('https://github.com/hellotasir'),
    ),
    _ContactLink(
      label: 'LinkedIn',
      uri: Uri.parse('https://www.linkedin.com/in/tasirrahman/'),
    ),
    _ContactLink(
      label: 'Bio Link',
      uri: Uri.parse('https://bio.link/tasirrahman'),
    ),
  ];

  static Future<void> _launch(Uri uri) async {
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok) {
      throw Exception('Launch failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(
      context,
    ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_links.length * 2 - 1, (index) {
        if (index.isOdd) return _spacing;
        final link = _links[index ~/ 2];
        return TextButton(
          onPressed: () => _launch(link.uri),
          child: Chip(label: Text(link.label, style: textStyle)),
        );
      }),
    );
  }
}

class _ContactLink {
  final String label;
  final Uri uri;

  const _ContactLink({required this.label, required this.uri});
}
