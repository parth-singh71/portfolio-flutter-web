import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpage.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/widgets/project_card.dart';

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
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Top Projects',
            style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 150.0,
            height: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.black,
            ),
          ),
          SizedBox(height: 50.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProjectCard(
                      context: context,
                      title: "Facial Feature Detection",
                      description:
                          "Developed a deep neural network model to predict different facial features of a person which can be used in face reading.",
                      // imagePath: 'images/python.png',
                      timePeriod: "June 2020",
                      technologies:
                          "Deep Learning | keras | Mask RCNN | Python",

                      onPressed: () {},
                    ),
                    ProjectCard(
                      context: context,
                      title: "Writers Bog",
                      description:
                          "Developed a social networking platform where people can express themselves using words. Had options to like, comment and share posts.",
                      // imagePath: 'images/python.png',
                      timePeriod: "July 2019 - August 2019",
                      technologies: "Android | Python | mysql | aws",
                      onPressed: () {},
                    ),
                    ProjectCard(
                      context: context,
                      title: "Body Part Detection",
                      description:
                          "Developed a convolutional neural network model to predict which body part is being pointed by the person using keras and Python.",
                      // imagePath: 'images/python.png',
                      timePeriod: "June 2019 - July 2019",
                      technologies: "Deep Learning | keras | Python",
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProjectCard(
                      context: context,
                      title: "Vision Board",
                      description:
                          "Developed a native android app where people could upload their goals. People could get daily reminders to spend some time for their dreams, Also had an inbuilt lock for privacy.",
                      // imagePath: 'images/python.png',
                      timePeriod: "February 2019 - March 2019",
                      technologies: "Android | Sqlite",
                      onPressed: () {},
                    ),
                    ProjectCard(
                      context: context,
                      title: "ChatOn",
                      description:
                          "Developed a hybrid (Android / iOS) realtime chatting app using Flutter (Frontend), Django and Django REST Framework (Backend). Used Heroku Server to deploy the chatting API.",
                      // imagePath: 'images/python.png',
                      timePeriod: "May 2020",
                      technologies: "Flutter | Django | Dart | Python | heroku",
                      onPressed: () {},
                    ),
                    ProjectCard(
                      context: context,
                      title: "Timeable",
                      description:
                          "Developed a timetable management solution for college students and teachers, Users can set their timetable in the app then the app will notify 30 minutes prior to any upcoming classes for the day.",
                      // imagePath: 'images/python.png',
                      timePeriod: "December 2019 - January 2020",
                      technologies: "Flutter | Sqflite | Dart",
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProjectCard(
                      context: context,
                      title: "Friday AI",
                      description:
                          "Developed a native chatbot android app using java. Developed  a custom API using Python which took the user input message and responded accordingly. The chatbot could talk, type, search the web, crack jokes, Open third party apps etc.",
                      // imagePath: 'images/python.png',
                      timePeriod: "July 2019",
                      technologies: "nlp | Python | Android | aws",
                      onPressed: () {},
                    ),
                    ProjectCard(
                      context: context,
                      title: "School Manager",
                      description:
                          "Developed a Django website and API for managing multiple schools. Teachers could create classrooms under an organization, add participants and share the study material to the students.",
                      // imagePath: 'images/python.png',
                      timePeriod: "May 2020",
                      technologies: "Django | Django REST Framework | Python",
                      onPressed: () {},
                    ),
                    ProjectCard(
                      context: context,
                      title: "Gender Predictor",
                      description:
                          "Created a python code which detects the gender of a person by analysing their name using Natural Language Processing and Python.",
                      // imagePath: 'images/python.png',
                      timePeriod: "July 2019",
                      technologies: "nlp | Python",
                      onPressed: () {},
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

//   final List<Widget> imageSliders = imgMap.keys
//       .map((item) => Container(
//             child: Container(
//               margin: EdgeInsets.all(5.0),
//               child: ClipRRect(
//                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                   child: Column(
//                     children: <Widget>[
//                       Image.asset(
//                         item,
//                         fit: BoxFit.contain,
//                         width: 200.0,
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           vertical: 10.0,
//                           horizontal: 20.0,
//                         ),
//                         child: Center(
//                           child: Text(
//                             imgMap[item],
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
//             ),
//           ))
//       .toList();
