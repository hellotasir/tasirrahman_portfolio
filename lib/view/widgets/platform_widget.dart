import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/models/platform.dart';
import 'package:tasirrahman_portfolio/services/platform_service.dart';

class PlatformsWidget extends StatelessWidget {
  const PlatformsWidget({super.key, required this.service});

  final PlatformService service;

  static const _maxWidth = 1100.0;
  static const _wideBreakpoint = 720.0;

  @override
  Widget build(BuildContext context) {
    final platforms = service.getSupportedPlatforms();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: _maxWidth),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth >= _wideBreakpoint;

              return Column(
                children: [
                  Text(
                    'Cross-Platform Application Coverage',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      platforms.length,
                      (i) => _PlatformCard(
                        platform: platforms[i],
                        width: isWide ? 240 : constraints.maxWidth,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _PlatformCard extends StatelessWidget {
  const _PlatformCard({required this.platform, required this.width});
  final PlatformSupport platform;
  final double width;

  static const _radius = 20.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return SizedBox(
      height: 150,
      width: width,
      child: Material(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(_radius),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                _icon(platform.platform),
                size: 36,
                color: colorScheme.primary,
              ),
              Text(
                _label(platform.platform),
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    platform.isSupported ? Icons.check_circle : Icons.cancel,
                    size: 18,
                    color: platform.isSupported ? Colors.green : Colors.red,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    platform.isSupported ? 'Available' : 'Not Available',
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _label(PlatformType type) {
    return switch (type) {
      PlatformType.android => 'Android',
      PlatformType.web => 'Web',
      PlatformType.windows => 'Windows',
      PlatformType.ios => 'iOS',
      PlatformType.macos => 'macOS',
      PlatformType.linux => 'Linux',
      PlatformType.embedded => 'Embedded',
      PlatformType.backend => 'Backend',
    };
  }

  IconData _icon(PlatformType type) {
    return switch (type) {
      PlatformType.android => Icons.android,
      PlatformType.web => Icons.public,
      PlatformType.windows => Icons.desktop_windows,
      PlatformType.ios => Icons.phone_iphone,
      PlatformType.macos => Icons.laptop_mac,
      PlatformType.linux => Icons.computer,
      PlatformType.embedded => Icons.memory,
      PlatformType.backend => Icons.storage,
    };
  }
}
