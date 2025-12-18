import 'dart:async';

class FaqService {
  Future<List<Map<String, dynamic>>> fetchFaqs() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      {
        "id": "1",
        "question": "What kind of Flutter projects have you worked on?",
        "answer":
            "I have worked on a variety of Flutter projects, including mobile applications, web applications, and cross-platform solutions, with a primary focus on production-grade Flutter mobile apps.",
      },
      {
        "id": "2",
        "question": "How do you stay updated with the latest Flutter trends?",
        "answer":
            "I stay updated by following official Flutter channels, reading documentation and blogs, watching technical talks and community content, and actively experimenting with new releases and features.",
      },
      {
        "id": "3",
        "question": "What is your approach to testing in Flutter?",
        "answer":
            "I follow Flutter testing best practices by implementing unit tests for business logic, widget tests for UI behavior, and integration tests to validate complete user flows and app stability.",
      },
      {
        "id": "4",
        "question":
            "How do you handle state management in your Flutter applications?",
        "answer":
            "I select state management solutions based on project complexity and requirements, using Provider, Riverpod, Bloc, GetX, or Redux to ensure predictable, scalable, and maintainable state handling.",
      },
      {
        "id": "5",
        "question":
            "How do you manage mobile architecture in your Flutter applications?",
        "answer":
            "I manage mobile architecture by applying Clean Architecture with MVVM and MVC where appropriate, enforcing strict separation between presentation, domain, and data layers. I use modular, feature-based design, dependency injection, and clear contracts to keep business logic independent of the UI.",
      },
      {
        "id": "6",
        "question": "How can I verify your expertise in Flutter?",
        "answer":
            "You can review my open-source Flutter web application on GitHub at https://github.com/hellotasir/tasirrahman_portfolio, which demonstrates real-world architecture, state management, and UI practices.",
      },
    ];
  }
}
