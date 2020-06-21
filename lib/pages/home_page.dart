import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpage.dart';
import 'package:portfolio/widgets/bullet_text.dart';
import 'package:portfolio/widgets/contact_tiles.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:portfolio/widgets/web_text.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      webpage: Webpage.home,
      body: body(),
    );
  }

  Widget body() {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        child: Column(
          children: [
            heroWithTypewriter(),
            SizedBox(
              height: 50.0,
            ),
            aboutMe(),
            SizedBox(
              height: 50.0,
            ),
            mySkills(),
            SizedBox(
              height: 50.0,
            ),
            myProjects(),
            SizedBox(
              height: 50.0,
            ),
            contactMe(),
            SizedBox(
              height: 50.0,
            ),
            blogPromo(),
          ],
        ),
      ),
    );
  }

  Widget contactMe() {
    return Container(
      width: double.infinity,
      color: Colors.green,
      padding: EdgeInsets.all(50.0),
      child: Column(
        children: [
          Text(
            'Connect with me today!',
            style: TextStyle(
              fontSize: 100.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Container(
            width: 150.0,
            height: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 50.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContactTile(
                      title: 'Email',
                      subtitle: 'parth.singh71@gmail.com',
                      icon: Icons.email,
                      iconPaddingColor: Colors.green.shade600,
                      titleStyle: myStyles.tsWebText.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      subtitleStyle: myStyles.tsWebText.copyWith(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      urlLink: 'mailto:parth.singh71@gmail.com',
                    ),
                    ContactTile(
                      title: 'Github',
                      subtitle: 'parth-singh71',
                      icon: FontAwesome.github,
                      iconPaddingColor: Colors.green.shade600,
                      titleStyle: myStyles.tsWebText.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      subtitleStyle: myStyles.tsWebText.copyWith(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      urlLink: 'https://github.com/parth-singh71',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContactTile(
                      title: 'StackOverflow',
                      subtitle: 'parth.singh71',
                      icon: FontAwesome.stack_overflow,
                      iconPaddingColor: Colors.green.shade600,
                      titleStyle: myStyles.tsWebText.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      subtitleStyle: myStyles.tsWebText.copyWith(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      urlLink:
                          'https://stackoverflow.com/users/10129545/parth-singh71',
                    ),
                    ContactTile(
                      title: 'Play Store',
                      subtitle: 'Psect',
                      icon: FontAwesome5Brands.google_play,
                      iconPaddingColor: Colors.green.shade600,
                      titleStyle: myStyles.tsWebText.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      subtitleStyle: myStyles.tsWebText.copyWith(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      urlLink:
                          'https://play.google.com/store/apps/developer?id=Psect',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContactTile(
                      title: 'LinkedIn',
                      subtitle: 'parthsingh71',
                      icon: FontAwesome.linkedin,
                      iconPaddingColor: Colors.green.shade600,
                      titleStyle: myStyles.tsWebText.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      subtitleStyle: myStyles.tsWebText.copyWith(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      urlLink: 'https://www.linkedin.com/in/parthsingh71/',
                    ),
                    ContactTile(
                      title: 'Facebook',
                      subtitle: 'parth.singh71@gmail.com',
                      icon: FontAwesome.facebook,
                      iconPaddingColor: Colors.green.shade600,
                      titleStyle: myStyles.tsWebText.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      subtitleStyle: myStyles.tsWebText.copyWith(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      urlLink: 'https://www.facebook.com/parth.singh3371',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContactTile(
                      title: 'Instagram',
                      subtitle: 'parth.singh71',
                      icon: FontAwesome.instagram,
                      iconPaddingColor: Colors.green.shade600,
                      titleStyle: myStyles.tsWebText.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      subtitleStyle: myStyles.tsWebText.copyWith(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      urlLink: 'https://www.instagram.com/parth.singh71/',
                    ),
                    ContactTile(
                      title: 'Twitter',
                      subtitle: 'parth_singh71',
                      icon: FontAwesome.twitter,
                      iconPaddingColor: Colors.green.shade600,
                      titleStyle: myStyles.tsWebText.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      subtitleStyle: myStyles.tsWebText.copyWith(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      urlLink: 'https://twitter.com/parth_singh71',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container myProjects() {
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

  Widget mySkills() {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'My Skills',
              style: TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              width: 150.0,
              height: 10.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.white),
            ),
            SizedBox(height: 50.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0),
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
                                  height: 200.0,
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
                      textStyle: GoogleFonts.droidSansMono(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                  SizedBox(height: 100.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container aboutMe() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'About Me',
            style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 150.0,
            height: 10.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0), color: Colors.black),
          ),
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

  Container heroWithTypewriter() {
    return Container(
      width: double.infinity,
      height: 700.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("images/lappy.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            alignment: Alignment.center,
            color: Colors.grey.withOpacity(0.1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right horizontally
                              2.0, // Move to bottom Vertically
                            ),
                          )
                        ]),
                    child: CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.green,
                      child: Hero(
                        tag: "myDP",
                        child: CircleAvatar(
                          radius: 95.0,
                          backgroundColor: Colors.blue,
                          backgroundImage: AssetImage(
                            'images/ps.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
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
                      textStyle: GoogleFonts.droidSansMono(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                  SizedBox(height: 50.0),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    margin: EdgeInsets.all(0.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, kContactPage);
                      },
                      color: Colors.green,
                      child: Text(
                        'Contact Me',
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
          ),
        ),
      ),
    );
  }

  Widget blogPromo() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Also checkout my blog!',
            style: TextStyle(
              fontSize: 100.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
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
          ElevatedContainer(
            padding: EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How to start a new Django Project',
                  style: myStyles.tsWebText.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
                Text(
                  'Are you a python developer and want to get into web development? Well, Django and Flask are one of the most popular web frameworks which you can use to build amazing, beautiful and secure websites.',
                  style: myStyles.tsWebText,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10.0),
                Text(
                  'In this post we are going to talk about Django and how you can get started with it. According to the documentation, Django is a high-level Python Web framework that enable developers to develop clean websites rapidly with pragmatic design. But before getting started lets see why should you choose Django.',
                  style: myStyles.tsWebText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "...",
                  style: myStyles.tsWebText,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 300.0,
                      height: 50.0,
                      margin: EdgeInsets.all(0.0),
                      child: RaisedButton(
                        onPressed: () {
                          launch(
                              'https://thededicatedprogrammer.blogspot.com/2020/05/how-to-start-new-django-project.html');
                        },
                        color: Colors.green,
                        child: Text(
                          'Read More',
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
                    SizedBox(width: 50.0),
                    Container(
                      width: 300.0,
                      height: 50.0,
                      margin: EdgeInsets.all(0.0),
                      child: RaisedButton(
                        onPressed: () {
                          launch(
                              'https://thededicatedprogrammer.blogspot.com/');
                        },
                        color: Colors.blue,
                        child: Text(
                          'View Blog',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
