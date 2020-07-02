import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpages/basic_webpage.dart';
import 'package:portfolio/widgets/fat_divider.dart';
import 'package:portfolio/colors.dart';

class MobileSkillsPage extends StatefulWidget {
  MobileSkillsPage({Key key}) : super(key: key);

  @override
  _MobileSkillsPageState createState() => _MobileSkillsPageState();
}

class _MobileSkillsPageState extends State<MobileSkillsPage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      pageTitle: "Skills",
      webpage: Webpage.skills,
      body: body(),
    );
  }

  Widget body() {
    return Container(
//      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Skills',
            style: myStyles.tsMobileHeading,
          ),
          FatDivider(),
          SizedBox(height: 50.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                      aspectRatio: 3.0,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                    ),
                    itemCount: (imgMap.length / 3).round(),
                    itemBuilder: (context, index) {
                      final int first = index * 3;
                      final int second = first + 1;
                      final int third = first + 2;
                      return Row(
                        children: [first, second, third].map((idx) {
                          return Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(
                                imgMap.keys.toList()[idx],
                                height: 150.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    }),
                TypewriterAnimatedTextKit(
                    isRepeatingAnimation: true,
                    speed: Duration(milliseconds: 50),
                    repeatForever: true,
                    onTap: () {
                      print("Tap Event");
                    },
                    text: [
                      "I make beautiful mobile apps",
                      "I write backend code and design databases",
                      "I primarily code in python",
                      "I know native as well as hybrid app development",
                      "I work on awesome Machine learning and Deep learning projects"
                    ],
                    textStyle: myStyles.tsMobileCodeTyper.copyWith(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                    alignment:
                        AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
                SizedBox(height: 50.0)
              ],
            ),
          )
        ],
      ),
    );
  }
}
