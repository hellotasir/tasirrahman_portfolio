import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/repositories/skill_repository.dart';
import 'package:tasirrahman_portfolio/services/skill_services.dart';
import 'package:tasirrahman_portfolio/view/widgets/about_me.dart';
import 'package:tasirrahman_portfolio/view/widgets/app_bar.dart';
import 'package:tasirrahman_portfolio/view/widgets/footer.dart';
import 'package:tasirrahman_portfolio/view/widgets/material_widget.dart';
import 'package:tasirrahman_portfolio/view/widgets/skill_widget.dart';
import 'package:tasirrahman_portfolio/view/widgets/statistic_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialWidget(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AboutMe(),
              SizedBox(height: 20),
              StatisticData(),
              SizedBox(height: 20),
              SkillsWidget(service: SkillService(LocalSkillRepository())),
              SizedBox(height: 20),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
