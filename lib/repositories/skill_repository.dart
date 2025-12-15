import 'package:tasirrahman_portfolio/models/skill_model.dart';

abstract class SkillRepository {
  List<Skill> getSkills();
}

class LocalSkillRepository implements SkillRepository {
  @override
  List<Skill> getSkills() {
    return const [
      Skill(title: 'Dart, Pub Packages, and Flutter SDK', tools: []),
      Skill(title: 'Widgets, Animations, and Accessibility', tools: []),
      Skill(
        title: 'Management and Version Control',
        tools: [
          'Git, GitHub, Jira, Confluence, Trello, Agile (Scrum & Kanban), Google Docs, Google Sheets, Notion, and CI/CD (Github Actions)',
        ],
      ),
      Skill(
        title: 'Local Storage, Cookies, Cache, and PaaS',
        tools: [
          'Firebase, Supabase, mongoDB, Shared Preferences, Hive, SQflite',
        ],
      ),
      Skill(
        title: 'Mobile Architecture & State Management',
        tools: ['MVVM, MVC, Provider, InheritedWidget, GetX, Bloc'],
      ),
      Skill(
        title: 'Performance, Security, and Testing',
        tools: [
          'Data Structures, Algorithms, Unit Testing, Widget Testing, Integration Testing',
        ],
      ),

      Skill(
        title: 'API and SDK Integration',
        tools: ['RESTful APIs, GraphQL, Firebase SDK, and Payment Gateways'],
      ),
      Skill(title: 'Deployment', tools: ['Firebase Hosting, Vercel, Netlify']),
    ];
  }
}
