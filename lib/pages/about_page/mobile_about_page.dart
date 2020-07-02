import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpages/basic_webpage.dart';
import 'package:portfolio/widgets/bullet_text.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:portfolio/widgets/fat_divider.dart';
import 'package:portfolio/widgets/web_text.dart';

class MobileAboutPage extends StatefulWidget {
  MobileAboutPage({Key key}) : super(key: key);

  @override
  _MobileAboutPageState createState() => _MobileAboutPageState();
}

class _MobileAboutPageState extends State<MobileAboutPage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      webpage: Webpage.about,
      pageTitle: "About Me",
      body: body(),
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
            style: myStyles.tsMobileHeading,
          ),
          FatDivider(),
          SizedBox(height: 50.0),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedContainer(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WebText(
                        text: "Who am I?",
                        textAlign: TextAlign.start,
                        style: myStyles.tsWebText.copyWith(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      WebText(
                        text: aboutText1,
                        style: myStyles.tsMobileWebText,
                      ),
                      SizedBox(height: 10.0),
                      WebText(
                        text: aboutText2,
                        style: myStyles.tsMobileWebText,
                      ),
                      SizedBox(height: 10.0),
                      WebText(
                        text: aboutText3,
                        style: myStyles.tsMobileWebText,
                      ),
                    ],
                  ),
                ),
                ElevatedContainer(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WebText(
                        text: "Education and Experience",
                        textAlign: TextAlign.start,
                        style: myStyles.tsWebText.copyWith(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      WebText(
                        text: aboutEduAndExp1,
                        style: myStyles.tsMobileWebText,
                      ),
                      SizedBox(height: 10.0),
                      WebText(
                        text: aboutEduAndExp2,
                        style: myStyles.tsMobileWebText,
                      ),
                      SizedBox(height: 10.0),
                      WebText(
                        text: aboutEduAndExp3,
                        style: myStyles.tsMobileWebText,
                      ),
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
                        textAlign: TextAlign.start,
                        style: myStyles.tsWebText.copyWith(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      WebText(
                        text: aboutHobby,
                        style: myStyles.tsMobileWebText,
                      ),
                      SizedBox(height: 10.0),
                      WebText(
                        text: aboutHobby1,
                        style: myStyles.tsMobileWebText,
                      ),
                      SizedBox(height: 10.0),
                      WebText(
                        text: aboutHobby2,
                        style: myStyles.tsMobileWebText,
                      ),
                      SizedBox(height: 10.0),
                      WebText(
                        text: aboutHobby3,
                        style: myStyles.tsMobileWebText,
                      ),
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
                        textAlign: TextAlign.start,
                        style: myStyles.tsWebText.copyWith(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      BulletText(
                        text: "Fourth year Btech Student",
                        style: myStyles.tsMobileWebText,
                      ),
                      BulletText(
                        text: "Loves to code and solve real life problems",
                        style: myStyles.tsMobileWebText,
                      ),
                      BulletText(
                        text: "Develops Mobile Apps for fun",
                        style: myStyles.tsMobileWebText,
                      ),
                      BulletText(
                        text: "Works on Artificial Intelligence",
                        style: myStyles.tsMobileWebText,
                      ),
                      BulletText(
                        text: "Does Mobile Ui designing to utilize creativity",
                        style: myStyles.tsMobileWebText,
                      ),
                      BulletText(
                        text: "Proficient with many programming languages",
                        style: myStyles.tsMobileWebText,
                      ),
                      BulletText(
                        text:
                            "Recently learnt Django and Django REST Framework",
                        style: myStyles.tsMobileWebText,
                      ),
                      BulletText(
                        text: "Proficient with databases",
                        style: myStyles.tsMobileWebText,
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
