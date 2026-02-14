import 'package:tasirrahman_portfolio/models/skill.dart';

abstract class SkillRepository {
  List<Skill> getSkills();
}

class LocalSkillRepository implements SkillRepository {
  @override
  List<Skill> getSkills() => const [
    Skill(title: 'Cross-Platform Development', tools: []),
    Skill(
      title: 'Dart Language, Pub Packages, Dart Frog, and Flutter SDK',
      tools: [],
    ),
    Skill(title: 'Widgets, Animations, and Accessibility', tools: []),
    Skill(title: 'Cloud, SDK, and API Integration', tools: []),
    Skill(title: 'Mobile Architecture and State Management', tools: []),
    Skill(title: 'Databases', tools: []),
    Skill(title: 'Performance, Security, and Testing', tools: []),
    Skill(title: 'Management and Version Control', tools: []),
    Skill(title: 'CI/CD and Process Methodologies', tools: []),
    Skill(title: 'Data Structures and Algorithms', tools: []),
    Skill(title: 'Deployment, Maintenance, and Monitoring', tools: []),
  ];
}
