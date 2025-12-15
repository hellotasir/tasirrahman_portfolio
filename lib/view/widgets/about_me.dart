import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isWide = width >= 600;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(175),
                child: Image.asset(
                  'lib/assets/tasir_profile.jpeg',
                  fit: BoxFit.cover,
                  width: isWide ? 350 : 150,
                  height: isWide ? 350 : 150,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'About Me',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'I am Tasir Rahman, a passionate developer with expertise in Flutter and mobile app development. I love creating beautiful and functional applications that provide great user experiences.',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
