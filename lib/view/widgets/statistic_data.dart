import 'package:flutter/material.dart';

class StatisticData extends StatelessWidget {
  const StatisticData({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isWide = width >= 600;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Align(
        alignment: Alignment.center,
        child: Wrap(
          alignment: isWide ? WrapAlignment.center : WrapAlignment.start,
          spacing: 24,
          runSpacing: 24,
          children: const [
            _StatCard(title: 'Dart Experience', value: '2+ Years'),
            _StatCard(title: 'Flutter Experience', value: '2+ Years'),
            _StatCard(title: 'App · Web · Desktop', value: '3.5+ Years'),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;

  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isWide = width >= 600;

    return Container(
      width: isWide ? 340 : double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(0, 4),
            color: Colors.black.withValues(alpha: 0.1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
