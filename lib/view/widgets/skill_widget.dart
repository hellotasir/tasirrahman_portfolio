import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/models/skill.dart';
import 'package:tasirrahman_portfolio/services/skill_service.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key, required this.service});

  final SkillService service;

  static const _maxWidth = 1100.0;
  static const _wideBreakpoint = 720.0;

  @override
  Widget build(BuildContext context) {
    final skills = service.fetchSkills();

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
                    'Skills',
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
                      skills.length,
                      (i) => _SkillCard(
                        skill: skills[i],
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

class _SkillCard extends StatelessWidget {
  const _SkillCard({required this.skill, required this.width});

  final Skill skill;
  final double width;

  static const _radius = 20.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

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
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                skill.title,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(
                  skill.tools.length,
                  (i) => _ToolLabel(label: skill.tools[i]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ToolLabel extends StatelessWidget {
  const _ToolLabel({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      label,
      style: theme.textTheme.labelMedium?.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
