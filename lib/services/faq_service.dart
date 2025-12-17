import 'dart:async';

class FaqService {
  Future<List<Map<String, dynamic>>> fetchFaqs() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      {
        'id': '1',
        'question': 'Who am I?',
        'answer':
            'I am Tasir Rahman, a Software Engineer and Entrepreneur focused on building scalable mobile and web applications that solve real-world problems.',
      },
      {
        'id': '2',
        'question': 'What is my experience with Dart and Flutter?',
        'answer':
            'I have hands-on experience developing and delivering cross-platform applications with Flutter, including production-grade Android, Windows, and Web apps.',
      },
      {
        "id": "3",
        "question": "How can you verify my expertise in Flutter?",
        "answer":
            "You can review my open-source Flutter portfolio application on GitHub: https://github.com/hellotasir/tasirrahman_portfolio. The project demonstrates real-world Flutter development with clean architecture, proper state management, reusable widgets, and production-ready practices focused on scalability, performance, and maintainability.",
      },
    ];
  }
}
