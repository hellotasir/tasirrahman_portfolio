import 'dart:async';

class FaqService {
  Future<List<Map<String, dynamic>>> fetchFaqs() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      {
        "id": "1",
        "question": "What kinds of projects have you worked on?",
        "answer":
            "I have worked on a wide range of projects using the Dart language including mobile applications, web applications, backend projects and desktop applications with a strong emphasis on maintainable and scalable codebases.",
      },
      {
        "id": "2",
        "question":
            "How do you stay up to date with the Dart and its associated frameworks?",
        "answer":
            "I stay current by regularly following official Dart and framework channels, reviewing updated documentation, reading in-depth technical articles, watching conference talks, community contents, and actively experimenting with new features and releases.",
      },

      {
        "id": "3",
        "question": "How can I verify your expertise in Dart?",
        "answer":
            "You can review my open-source projects written in Dart on GitHub at https://github.com/hellotasir, which showcase my coding style, problem-solving skills, and adherence to best practices in Dart development.",
      },
      {
        "id": "4",
        "question": "What are you currently learning?",
        "answer":
            "I am currently deepening my understanding of the Dart language across backend, web, and cross-platform application development, with a strong focus on writing efficient, testable, and scalable Dart code.",
      },
      {
        "id": "5",
        "question":
            "If you have more experience, why do you have fewer projects?",
        "answer":
            "I prioritize depth and quality over volume. Rather than accumulating many small projects, I focus on building fewer but more robust, well-structured, and scalable solutions. This allows me to apply strong engineering principles, maintain high standards, and deliver long-term value through each project.",
      },
      {
        "id": "6",
        "question": "What skills do you not have experience with?",
        "answer":
            "I prefer to discuss skill gaps openly and honestly in direct conversation so I can provide proper context. My goal is always to present a clear and accurate picture of my abilities. If you are looking for experience in a specific area or technology, feel free to ask and I will clarify my level of exposure or learning status.",
      },
      {
        "id": "7",
        "question": "What is the purpose of creating this portfolio?",
        "answer":
            "It is a static portfolio website built entirely using the Dart language, thoughtfully designed to demonstrate my proficiency, best practices, and real-world experience across the Dart ecosystem.",
      },
    ];
  }
}
