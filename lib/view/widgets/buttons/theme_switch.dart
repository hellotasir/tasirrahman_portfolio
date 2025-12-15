import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasirrahman_portfolio/utils/theme_controller.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ThemeController>();

    return Switch(value: controller.isDark, onChanged: controller.toggle);
  }
}
