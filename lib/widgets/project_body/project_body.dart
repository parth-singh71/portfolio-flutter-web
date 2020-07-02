import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/utils/responsive_widget.dart';
import 'package:portfolio/widgets/bullet_text.dart';
import 'package:portfolio/widgets/project_body/desktop_project_body.dart';
import 'package:portfolio/widgets/project_body/mobile_project_body.dart';

class ProjectBody extends StatelessWidget {
  ProjectBody({
    @required this.projectDetailsList,
    @required this.projectDuration,
    this.projectLinks,
    @required this.projectTitle,
    this.services,
    @required this.technologies,
    @required this.projectSummary,
    this.tools,
  });

  final List<String> projectDetailsList;
  final Map<String, String> projectLinks;

  final String projectTitle,
      projectSummary,
      projectDuration,
      technologies,
      tools,
      services;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopProjectBody(
        projectTitle: projectTitle,
        projectSummary: projectSummary,
        projectDuration: projectDuration,
        technologies: technologies,
        projectDetailsList: projectDetailsList,
        projectLinks: projectLinks,
        services: services,
        tools: tools,
      ),
//      mediumScreen: TabletProjectBody(
//        projectTitle: projectTitle,
//        projectSummary: projectSummary,
//        projectDuration: projectDuration,
//        technologies: technologies,
//        projectDetailsList: projectDetailsList,
//        projectLinks: projectLinks,
//        services: services,
//        tools: tools,
//      ),
      smallScreen: MobileProjectBody(
        projectTitle: projectTitle,
        projectSummary: projectSummary,
        projectDuration: projectDuration,
        technologies: technologies,
        projectDetailsList: projectDetailsList,
        projectLinks: projectLinks,
        services: services,
        tools: tools,
      ),
    );
  }

  List<Widget> getProjectDetails(projectDetails) {
    List<Widget> result = [];
    for (String sentence in projectDetails) {
      result.add(
        BulletText(
          text: sentence,
          style: myStyles.tsWebText,
        ),
      );
    }
    return result;
  }
}
