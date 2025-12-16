class Faq {
  final String id;
  final String question;
  final String answer;

  const Faq({required this.id, required this.question, required this.answer});

  factory Faq.fromJson(Map<String, dynamic> json) {
    return Faq(
      id: json['id'] as String,
      question: json['question'] as String,
      answer: json['answer'] as String,
    );
  }
}
