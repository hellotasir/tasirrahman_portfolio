import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/models/statistic.dart';
import 'package:tasirrahman_portfolio/services/statistic_service.dart';

class StatisticWidget extends StatelessWidget {
  const StatisticWidget({super.key, required this.service});
  final StatisticService service;

  static const _breakpoint = 600.0;
  static const _spacing = 24.0;

  @override
  Widget build(BuildContext context) {
    final items = service.fetchStatistics();

    return Padding(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= _breakpoint;
            final cardWidth = isWide ? 320.0 : constraints.maxWidth;

            return Wrap(
              alignment: isWide ? WrapAlignment.center : WrapAlignment.start,
              spacing: _spacing,
              runSpacing: _spacing,
              children: items
                  .map((item) => _StatCard(item: item, width: cardWidth))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({required this.item, required this.width});

  final StatisticItem item;
  final double width;

  static const _radius = 16.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_radius),
          color: theme.colorScheme.surface,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                item.value,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
