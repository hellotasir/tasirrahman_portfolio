import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/view/widgets/buttons/theme_switch.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  static const _title = Text(
    'Tasir Rahman Portfolio',
    style: TextStyle(fontWeight: FontWeight.w700),
  );

  static const _preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => _preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _title,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [ThemeSwitch()],
    );
  }
}
