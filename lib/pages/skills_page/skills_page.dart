import 'package:flutter/material.dart';
import 'package:portfolio/pages/skills_page/desktop_skills_page.dart';
import 'package:portfolio/pages/skills_page/mobile_skills_page.dart';
import 'package:portfolio/pages/skills_page/tablet_skills_page.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class SkillsPage extends StatefulWidget {
  SkillsPage({Key key}) : super(key: key);

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopSkillsPage(),
//      mediumScreen: TabletSkillsPage(),
      smallScreen: MobileSkillsPage(),
    );
  }
}
