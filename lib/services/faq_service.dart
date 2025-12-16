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
        'question': 'What is your experience with Dart and Flutter?',
        'answer':
            'I have over 2.5 years of hands-on experience building cross-platform applications with Flutter, including 1.5 years of professional experience delivering Android, Windows and Web applications.',
      },
      {
        'id': '3',
        'question':
            'Have you deployed applications to platforms like the Play Store or App Store?',
        'answer':
            'I have not published apps to the Play Store or App Store due to personal constraints. However, I have extensive experience deploying and managing production web applications using Firebase Hosting, Netlify, and Vercel.',
      },
      {
        'id': '4',
        'question':
            'Have you worked with PaaS platforms such as GCP, AWS, or Azure?',
        'answer':
            'While I have not worked directly with GCP, AWS, or Azure in production, I have strong practical experience using Supabase, Firebase, and MongoDB for backend services and cloud-based application development.',
      },
    ];
  }
}
