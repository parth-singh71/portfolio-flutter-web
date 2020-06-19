import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/projects_page.dart';
import 'package:portfolio/pages/skills_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: myColors.accentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'goo',
      ),
      initialRoute: kHomePage,
      routes: {
        kHomePage: (context) => HomePage(),
        kAboutPage: (context) => AboutPage(),
        kProjetsPage: (context) => ProjectsPage(),
        kSkillsPage: (context) => SkillsPage(),
        kContactPage: (context) => ContactPage(),
      },
    );
  }
}
