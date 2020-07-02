import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/bullet_text.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:portfolio/widgets/fat_divider.dart';

class TabletProjectBody extends StatelessWidget {
  TabletProjectBody({
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
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            projectTitle,
            style: myStyles.tsMobileHeading,
          ),
          FatDivider(),
          SizedBox(height: 50.0),
          Container(
            child: Column(
              children: [
                TyperAnimatedTextKit(
                  onTap: () {},
                  text: [
                    projectSummary,
                  ],
                  textStyle: myStyles.tsMobileSimpleTyper,
                  isRepeatingAnimation: false,
                  speed: Duration(milliseconds: 80),
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.topStart,
                ),
                ElevatedContainer(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              technologies,
                              style: myStyles.tsWebText.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                              ),
                            ),
                            Text(
                              '$projectDuration | Individual Project',
                              style: myStyles.tsMobileWebText.copyWith(
                                fontSize: 15.0,
                                color: myColors.colTextSecondary,
                              ),
                            ),
                            SizedBox(height: 20.0),
                          ]
                            ..addAll(getProjectDetails(projectDetailsList))
                            ..addAll(
                              [
                                SizedBox(height: 30.0),
                                RichText(
                                  text: TextSpan(
                                      text:
                                          services != null ? "Services: " : "",
                                      style: myStyles.tsWebText.copyWith(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: myColors.colTextPrimary),
                                      children: [
                                        TextSpan(
                                          text:
                                              services != null ? services : "",
                                          style: myStyles.tsWebText.copyWith(
                                            fontSize: 15.0,
                                            color: myColors.colTextPrimary,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        )
                                      ]),
//
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: tools != null ? "Tools: " : "",
                                      style: myStyles.tsWebText.copyWith(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: myColors.colTextPrimary),
                                      children: [
                                        TextSpan(
                                          text: tools != null ? tools : "",
                                          style: myStyles.tsWebText.copyWith(
                                            fontSize: 15.0,
                                            color: myColors.colTextPrimary,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        )
                                      ]),
//
                                ),
                              ],
                            ),
                        ),
                      ),
                      //todo: images
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(kNoImgAvailable),
                          Image.asset(kNoImgAvailable)
                        ],
                      ),

                      SizedBox(height: 50.0),
                      Text(
                        "Check it out today!\nProject links are given below.",
                        textAlign: TextAlign.center,
                        style: myStyles.tsMobileWebText,
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 300.0,
                        height: 50.0,
                        margin: EdgeInsets.all(0.0),
                        child: RaisedButton(
                          onPressed: () {
//                            launch('mailto:parth.singh71@gmail.com');
                          },
                          color: Colors.green,
                          child: Text(
                            'Github',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getProjectDetails(projectDetails) {
    List<Widget> result = [];
    for (String sentence in projectDetails) {
      result.add(
        BulletText(
          text: sentence,
          style: myStyles.tsMobileWebText,
        ),
      );
    }
    return result;
  }
}
