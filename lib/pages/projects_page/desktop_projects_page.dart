import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpages/basic_webpage.dart';
import 'package:portfolio/widgets/fat_divider.dart';
import 'package:portfolio/widgets/project_card.dart';

class DesktopProjectsPage extends StatefulWidget {
  DesktopProjectsPage({Key key}) : super(key: key);

  @override
  _DesktopProjectsPageState createState() => _DesktopProjectsPageState();
}

class _DesktopProjectsPageState extends State<DesktopProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      pageTitle: "Top Projects",
      webpage: Webpage.projects,
      body: body(),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Top Projects',
            style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
          ),
          FatDivider(),
          SizedBox(height: 50.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DesktopProjectCard(
                      context: context,
                      projectTitle: facialFeatureDetails["projectTitle"],
                      projectSummary: facialFeatureDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration: facialFeatureDetails["projectDuration"],
                      technologies: facialFeatureDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpFacialFeature);
                      },
                    ),
                    DesktopProjectCard(
                      context: context,
                      projectTitle: writersBlogDetails["projectTitle"],
                      projectSummary: writersBlogDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration: writersBlogDetails["projectDuration"],
                      technologies: writersBlogDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpWritersBlog);
                      },
                    ),
                    DesktopProjectCard(
                      context: context,
                      projectTitle: bodyPartDetails["projectTitle"],
                      projectSummary: bodyPartDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration: bodyPartDetails["projectDuration"],
                      technologies: bodyPartDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpWritersBlog);
                      },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DesktopProjectCard(
                      context: context,
                      projectTitle: visionBoardDetails["projectTitle"],
                      projectSummary: visionBoardDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration: visionBoardDetails["projectDuration"],
                      technologies: visionBoardDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpVisionBoard);
                      },
                    ),
                    DesktopProjectCard(
                      context: context,
                      projectTitle: chatOnDetails["projectTitle"],
                      projectSummary: chatOnDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration: chatOnDetails["projectDuration"],
                      technologies: chatOnDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpChatOn);
                      },
                    ),
                    DesktopProjectCard(
                      context: context,
                      projectTitle: timeableDetails["projectTitle"],
                      projectSummary: timeableDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration: timeableDetails["projectDuration"],
                      technologies: timeableDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpTimeable);
                      },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DesktopProjectCard(
                      context: context,
                      projectTitle: fridayAIDetails["projectTitle"],
                      projectSummary: fridayAIDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration: fridayAIDetails["projectDuration"],
                      technologies: fridayAIDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpFridayAI);
                      },
                    ),
                    DesktopProjectCard(
                      context: context,
                      projectTitle: schoolManagerDetails["projectTitle"],
                      projectSummary: schoolManagerDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration: schoolManagerDetails["projectDuration"],
                      technologies: schoolManagerDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpSchoolManager);
                      },
                    ),
                    DesktopProjectCard(
                      context: context,
                      projectTitle: genderPredictorDetails["projectTitle"],
                      projectSummary: genderPredictorDetails[
                          "projectSummary"], // imagePath: 'images/python.png',
                      projectDuration:
                          genderPredictorDetails["projectDuration"],
                      technologies: genderPredictorDetails["technologies"],
                      onPressed: () {
                        Navigator.pushNamed(context, kpGenderPredictor);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
