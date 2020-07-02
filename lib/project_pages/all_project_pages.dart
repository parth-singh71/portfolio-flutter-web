import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/project_body/project_body.dart';
import 'package:portfolio/widgets/basic_webpages/basic_webpage.dart';

class FacialFeatureProjectPage extends StatefulWidget {
  @override
  _FacialFeatureProjectPageState createState() =>
      _FacialFeatureProjectPageState();
}

class _FacialFeatureProjectPageState extends State<FacialFeatureProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = facialFeatureDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}

class BodyPartProjectPage extends StatefulWidget {
  @override
  _BodyPartProjectPageState createState() => _BodyPartProjectPageState();
}

class _BodyPartProjectPageState extends State<BodyPartProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = bodyPartDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}

class WritersBlogProjectPage extends StatefulWidget {
  @override
  _WritersBlogProjectPageState createState() => _WritersBlogProjectPageState();
}

class _WritersBlogProjectPageState extends State<WritersBlogProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = writersBlogDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}

class VisionBoardProjectPage extends StatefulWidget {
  @override
  _VisionBoardProjectPageState createState() => _VisionBoardProjectPageState();
}

class _VisionBoardProjectPageState extends State<VisionBoardProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = visionBoardDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}

class ChatOnProjectPage extends StatefulWidget {
  @override
  _ChatOnProjectPageState createState() => _ChatOnProjectPageState();
}

class _ChatOnProjectPageState extends State<ChatOnProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = chatOnDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}

class TimeableProjectPage extends StatefulWidget {
  @override
  _TimeableProjectPageState createState() => _TimeableProjectPageState();
}

class _TimeableProjectPageState extends State<TimeableProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = timeableDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}

class FridayAIProjectPage extends StatefulWidget {
  @override
  _FridayAIProjectPageState createState() => _FridayAIProjectPageState();
}

class _FridayAIProjectPageState extends State<FridayAIProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = fridayAIDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}

class SchoolManagerProjectPage extends StatefulWidget {
  @override
  _SchoolManagerProjectPageState createState() =>
      _SchoolManagerProjectPageState();
}

class _SchoolManagerProjectPageState extends State<SchoolManagerProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = schoolManagerDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}

class GenderPredictorProjectPage extends StatefulWidget {
  @override
  _GenderPredictorProjectPageState createState() =>
      _GenderPredictorProjectPageState();
}

class _GenderPredictorProjectPageState
    extends State<GenderPredictorProjectPage> {
  @override
  Widget build(BuildContext context) {
    Map details = genderPredictorDetails;
    return BasicWebpage(
      webpage: Webpage.singleProject,
      pageTitle: details["projectTitle"],
      body: ProjectBody(
        projectTitle: details["projectTitle"],
        projectSummary: details["projectSummary"],
        projectDuration: details["projectDuration"],
        technologies: details["technologies"],
        projectDetailsList: details["projectDetailsList"],
        projectLinks: details['projectLinks'],
        services: details['services'],
        tools: details['tools'],
      ),
    );
  }
}
