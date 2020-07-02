import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/pages/about_page/desktop_about_page.dart';
import 'package:portfolio/pages/about_page/mobile_about_page.dart';
import 'package:portfolio/pages/about_page/tablet_about_page.dart';
import 'package:portfolio/utils/responsive_widget.dart';
import 'package:portfolio/widgets/bullet_text.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:portfolio/widgets/fat_divider.dart';
import 'package:portfolio/widgets/web_text.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopAboutPage(),
//      mediumScreen: TabletAboutPage(),
      smallScreen: MobileAboutPage(),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Hero(
            tag: "myDP",
            child: CircleAvatar(
              radius: 95.0,
              backgroundColor: myColors.primaryColor,
              backgroundImage: AssetImage(
                'images/ps.jpg',
              ),
            ),
          ),
          Text(
            'About Me',
            style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
          ),
          FatDivider(),
          SizedBox(height: 50.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      ElevatedContainer(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WebText(
                              text: "Who am I?",
                              style: myStyles.tsWebText.copyWith(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            WebText(text: aboutText1),
                            SizedBox(height: 10.0),
                            WebText(text: aboutText2),
                            SizedBox(height: 10.0),
                            WebText(text: aboutText3),
                          ],
                        ),
                      ),
                      ElevatedContainer(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WebText(
                              text: "Quick Summary",
                              style: myStyles.tsWebText.copyWith(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            BulletText(text: "Fourth year Btech Student"),
                            BulletText(
                                text:
                                    "Loves to code and solve real life problems"),
                            BulletText(text: "Develops Mobile Apps for fun"),
                            BulletText(
                                text: "Works on Artificial Intelligence"),
                            BulletText(
                                text:
                                    "Does Mobile Ui designing to utilize creativity"),
                            BulletText(
                                text:
                                    "Proficient with many programming languages"),
                            BulletText(
                                text:
                                    "Recently learnt Django and Django REST Framework"),
                            BulletText(text: "Proficient with databases"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ElevatedContainer(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WebText(
                              text: "Education and Experience",
                              style: myStyles.tsWebText.copyWith(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            WebText(text: aboutEduAndExp1),
                            SizedBox(height: 10.0),
                            WebText(text: aboutEduAndExp2),
                            SizedBox(height: 10.0),
                            WebText(text: aboutEduAndExp3),
                          ],
                        ),
                      ),
                      ElevatedContainer(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WebText(
                              text: "Hobbies",
                              style: myStyles.tsWebText.copyWith(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            WebText(text: aboutHobby),
                            SizedBox(height: 10.0),
                            WebText(text: aboutHobby1),
                            SizedBox(height: 10.0),
                            WebText(text: aboutHobby2),
                            SizedBox(height: 10.0),
                            WebText(text: aboutHobby3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
