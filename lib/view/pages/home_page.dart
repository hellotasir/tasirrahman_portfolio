import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/repositories/platform_repository.dart';
import 'package:tasirrahman_portfolio/repositories/statistic_repository/local_statistic_repository.dart';
import 'package:tasirrahman_portfolio/repositories/skill_repository.dart';
import 'package:tasirrahman_portfolio/services/platform_service.dart';
import 'package:tasirrahman_portfolio/services/skill_service.dart';
import 'package:tasirrahman_portfolio/services/statistic_service.dart';
import 'package:tasirrahman_portfolio/view/widgets/about_me.dart';
import 'package:tasirrahman_portfolio/view/widgets/app_bar.dart';
import 'package:tasirrahman_portfolio/view/widgets/platform_widget.dart';
import 'package:tasirrahman_portfolio/view/widgets/contact_widget.dart';
import 'package:tasirrahman_portfolio/view/widgets/faq_widget.dart';
import 'package:tasirrahman_portfolio/view/widgets/footer_widget.dart';
import 'package:tasirrahman_portfolio/view/widgets/material_widget.dart';
import 'package:tasirrahman_portfolio/view/widgets/skill_widget.dart';
import 'package:tasirrahman_portfolio/view/widgets/statistic_widget.dart';

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
              AboutMeWidget(),
              SizedBox(height: 20),
              StatisticWidget(
                service: StatisticService(LocalStatisticRepository()),
              ),
              SizedBox(height: 20),
              SkillsWidget(service: SkillService(LocalSkillRepository())),
              SizedBox(height: 40),
              PlatformsWidget(
                service: PlatformService(LocalPlatformRepository()),
              ),
              SizedBox(height: 40),
              FaqWidget(),
              SizedBox(height: 40),
              ContactWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
