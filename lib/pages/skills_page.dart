import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpage.dart';

class SkillsPage extends StatefulWidget {
  SkillsPage({Key key}) : super(key: key);

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      webpage: Webpage.skills,
      body: body(),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Text(
        "Skills Page",
        style: TextStyle(fontSize: 50.0),
      ),
    );
  }
}
