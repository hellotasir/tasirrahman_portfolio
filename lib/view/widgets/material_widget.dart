import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasirrahman_portfolio/utils/app_themes.dart';
import 'package:tasirrahman_portfolio/utils/site_info.dart';
import 'package:tasirrahman_portfolio/utils/theme_controller.dart';

class MaterialWidget extends StatelessWidget {
  final Widget child;
  const MaterialWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeController(),
      child: Consumer<ThemeController>(
        builder: (context, theme, _) {
          return MaterialApp(
            title: SiteInfo.title,
            themeMode: theme.mode,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            home: child,
          );
        },
      ),
    );
  }
}
