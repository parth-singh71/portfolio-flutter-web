import 'package:flutter/material.dart';
import 'package:portfolio/pages/projects_page/desktop_projects_page.dart';
import 'package:portfolio/pages/projects_page/mobile_projects_page.dart';
import 'package:portfolio/pages/projects_page/tablet_projects_page.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class ProjectsPage extends StatefulWidget {
  ProjectsPage({Key key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopProjectsPage(),
//      mediumScreen: TabletProjectsPage(),
      smallScreen: MobileProjectsPage(),
    );
  }
}
