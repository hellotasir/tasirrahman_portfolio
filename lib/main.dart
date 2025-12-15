import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/utils/site_info.dart';
import 'package:tasirrahman_portfolio/view/pages/home_page.dart';

void main() {
  runApp(MaterialApp(title: SiteInfo.title, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
