
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpage.dart';

class ProjectsPage extends StatefulWidget {
  ProjectsPage({Key key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      webpage: Webpage.projects,
      body: body(),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Text(
        "Projects Page",
        style: TextStyle(fontSize: 50.0),
      ),
    );
  }
}
