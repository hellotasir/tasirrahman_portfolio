import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  static const double _maxWidth = 600;
  static const double _wideSize = 350;
  static const double _narrowSize = 150;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: _maxWidth),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final size = constraints.maxWidth >= _maxWidth
                  ? _wideSize
                  : _narrowSize;

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: size,
                    height: size,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        'lib/assets/tasir_profile.jpeg',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'About Me',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'I am Tasir Rahman, a passionate developer with expertise in Flutter and mobile app development. I love creating beautiful and functional applications that provide great user experiences.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
