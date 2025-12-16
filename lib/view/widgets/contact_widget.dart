import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

enum ContactLink {
  github('GitHub', 'https://github.com/hellotasir'),
  linkedin('LinkedIn', 'https://www.linkedin.com/in/tasirrahman/'),
  bioLink('Bio Link', 'https://bio.link/tasirrahman');

  final String label;
  final String url;

  const ContactLink(this.label, this.url);

  Uri get uri => Uri.parse(url);
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  static const _spacing = SizedBox(width: 4);

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
      children: List.generate(ContactLink.values.length * 2 - 1, (index) {
        if (index.isOdd) return _spacing;
        final link = ContactLink.values[index ~/ 2];
        return TextButton(
          onPressed: () => _launch(link.uri),
          child: Chip(label: Text(link.label, style: textStyle)),
        );
      }),
    );
  }
}
