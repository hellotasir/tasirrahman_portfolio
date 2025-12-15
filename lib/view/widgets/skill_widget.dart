import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/models/skill_model.dart';
import 'package:tasirrahman_portfolio/services/skill_services.dart';

class SkillsWidget extends StatelessWidget {
  final SkillService service;

  const SkillsWidget({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final skills = service.fetchSkills();
    final width = MediaQuery.of(context).size.width;
    final isWide = width >= 600;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'My Skills',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: isWide ? WrapAlignment.center : WrapAlignment.start,
                children: skills
                    .map((skill) => _SkillCard(skill: skill, isWide: isWide))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SkillCard extends StatelessWidget {
  final Skill skill;
  final bool isWide;

  const _SkillCard({required this.skill, required this.isWide});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: isWide ? 260 : double.infinity,
      padding: const EdgeInsets.all(16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill.title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          if (skill.tools.isNotEmpty) ...[
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: skill.tools
                  .map(
                    (tool) => Text(
                      tool,
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }
}
