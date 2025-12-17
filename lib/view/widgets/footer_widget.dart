import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  FooterWidget({super.key});
  final year = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(child: Text('© $year Tasir Rahman. All rights reserved.')),
    );
  }
}
