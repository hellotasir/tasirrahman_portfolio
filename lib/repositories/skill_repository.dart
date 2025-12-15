import 'package:tasirrahman_portfolio/models/skill.dart';

abstract class SkillRepository {
  List<Skill> getSkills();
}

class LocalSkillRepository implements SkillRepository {
  @override
  List<Skill> getSkills() => const [
    Skill(title: 'Dart, Pub Packages & Flutter SDK', tools: []),
    Skill(title: 'Widgets, Animations & Accessibility', tools: []),
    Skill(title: 'State Management & Architecture', tools: []),
    Skill(title: 'API & SDK Integration', tools: []),
    Skill(title: 'Local Storage, PaaS, Network & Cache', tools: []),
    Skill(title: 'Performance, Security & Testing', tools: []),
    Skill(title: 'Deployment & Platform Support', tools: []),
    Skill(title: 'Version Control & Project Management', tools: []),
  ];
}
