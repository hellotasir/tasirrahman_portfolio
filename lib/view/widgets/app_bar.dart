import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/view/widgets/buttons/theme_switch.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Tasir Rahman Portfolio',
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [ThemeSwitch()],
    );
  }
}
