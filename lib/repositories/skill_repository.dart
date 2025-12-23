import 'package:tasirrahman_portfolio/models/skill.dart';

abstract class SkillRepository {
  List<Skill> getSkills();
}

class LocalSkillRepository implements SkillRepository {
  @override
  List<Skill> getSkills() => const [
    Skill(title: 'Cross-Platform Development', tools: []),
    Skill(title: 'Dart Language, and Pub Packages & Plugins', tools: []),
    Skill(title: 'Flutter, Jaspr, and Dart Frog', tools: []),
    Skill(title: 'Widgets, Animations, and Accessibility', tools: []),
    Skill(
      title: 'Architecture, Design Patterns and State Management',
      tools: [],
    ),
    Skill(title: 'Data Structures, Algorithms, and Problem Solving', tools: []),
    Skill(title: 'SDK & API', tools: []),
    Skill(title: 'Cloud Services, Local Storage, Network & Cache', tools: []),
    Skill(title: 'Performance, Security, and Testing', tools: []),
    Skill(title: 'CI/CD, Deployment, and Platform Support', tools: []),
    Skill(title: 'Management and Version Control', tools: []),
  ];
}
