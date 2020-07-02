import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/pages/home_page/home_page.dart';
import 'package:portfolio/widgets/basic_webpages/basic_webpage.dart';
import 'package:portfolio/widgets/bullet_text.dart';
import 'package:portfolio/widgets/contact_tiles.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:portfolio/widgets/fat_divider.dart';
import 'package:portfolio/widgets/footers/footer.dart';
import 'package:portfolio/widgets/headers/mobile_header.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:portfolio/widgets/web_text.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      pageTitle: "Home",
      webpage: Webpage.home,
      customBody: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                elevation: 10.0,
                pinned: true,
                actions: <Widget>[],
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text('Parth Singh'),
                  collapseMode: CollapseMode.parallax,
                  background: Container(
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
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(child: body()),
        ),
        drawer: MobileDrawer(),
      ),
    );
  }

  Widget body() {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        child: Column(
          children: [
            ElevatedContainer(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Colors.green,
                    child: Hero(
                      tag: "myDP",
                      child: CircleAvatar(
                        radius: 75.0,
                        backgroundColor: myColors.primaryColor,
                        backgroundImage: AssetImage(
                          'images/ps.jpg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
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
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                  SizedBox(height: 30.0),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    margin: EdgeInsets.all(20.0),
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
            Footer(),
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
            style: myStyles.tsMobileHeading.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5.0),
          FatDivider(color: Colors.white),
          SizedBox(height: 50.0),
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
            urlLink: contactLinks.email,
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
            urlLink: contactLinks.github,
          ),
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
            urlLink: contactLinks.stack_overflow,
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
            urlLink: contactLinks.google_play,
          ),
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
            urlLink: contactLinks.linkedin,
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
            urlLink: contactLinks.facebook,
          ),
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
            urlLink: contactLinks.instagram,
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
            urlLink: contactLinks.twitter,
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
            style: myStyles.tsMobileHeading,
          ),
          FatDivider(),
          SizedBox(height: 50.0),
          Container(
            child: Column(
              children: [
                MobileProjectCard(
                  context: context,
                  projectTitle: facialFeatureDetails["projectTitle"],
                  projectSummary: facialFeatureDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: facialFeatureDetails["projectDuration"],
                  technologies: facialFeatureDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpFacialFeature);
                  },
                ),
                MobileProjectCard(
                  context: context,
                  projectTitle: writersBlogDetails["projectTitle"],
                  projectSummary: writersBlogDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: writersBlogDetails["projectDuration"],
                  technologies: writersBlogDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpWritersBlog);
                  },
                ),
                MobileProjectCard(
                  context: context,
                  projectTitle: bodyPartDetails["projectTitle"],
                  projectSummary: bodyPartDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: bodyPartDetails["projectDuration"],
                  technologies: bodyPartDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpWritersBlog);
                  },
                ),
                MobileProjectCard(
                  context: context,
                  projectTitle: visionBoardDetails["projectTitle"],
                  projectSummary: visionBoardDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: visionBoardDetails["projectDuration"],
                  technologies: visionBoardDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpVisionBoard);
                  },
                ),
                MobileProjectCard(
                  context: context,
                  projectTitle: chatOnDetails["projectTitle"],
                  projectSummary: chatOnDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: chatOnDetails["projectDuration"],
                  technologies: chatOnDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpChatOn);
                  },
                ),
                MobileProjectCard(
                  context: context,
                  projectTitle: timeableDetails["projectTitle"],
                  projectSummary: timeableDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: timeableDetails["projectDuration"],
                  technologies: timeableDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpTimeable);
                  },
                ),
                MobileProjectCard(
                  context: context,
                  projectTitle: fridayAIDetails["projectTitle"],
                  projectSummary: fridayAIDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: fridayAIDetails["projectDuration"],
                  technologies: fridayAIDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpFridayAI);
                  },
                ),
                MobileProjectCard(
                  context: context,
                  projectTitle: schoolManagerDetails["projectTitle"],
                  projectSummary: schoolManagerDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: schoolManagerDetails["projectDuration"],
                  technologies: schoolManagerDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpSchoolManager);
                  },
                ),
                MobileProjectCard(
                  context: context,
                  projectTitle: genderPredictorDetails["projectTitle"],
                  projectSummary: genderPredictorDetails[
                      "projectSummary"], // imagePath: 'images/python.png',
                  projectDuration: genderPredictorDetails["projectDuration"],
                  technologies: genderPredictorDetails["technologies"],
                  onPressed: () {
                    Navigator.pushNamed(context, kpGenderPredictor);
                  },
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
        color: myColors.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'My Skills',
              style: myStyles.tsMobileHeading.copyWith(
                color: Colors.white,
              ),
            ),
            FatDivider(color: Colors.white),
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
                      textStyle: myStyles.tsMobileCodeTyper.copyWith(
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

  Widget blogPromo() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('Also checkout my blog!', style: myStyles.tsMobileHeading),
          FatDivider(),
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
                  style: myStyles.tsMobileWebText,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10.0),
                Text(
                  'In this post we are going to talk about Django and how you can get started with it. According to the documentation, Django is a high-level Python Web framework that enable developers to develop clean websites rapidly with pragmatic design. But before getting started lets see why should you choose Django.',
                  style: myStyles.tsMobileWebText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "...",
                  style: myStyles.tsMobileWebText,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20.0),
                Column(
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
                    SizedBox(height: 20.0),
                    Container(
                      width: 300.0,
                      height: 50.0,
                      margin: EdgeInsets.all(0.0),
                      child: RaisedButton(
                        onPressed: () {
                          launch(
                              'https://thededicatedprogrammer.blogspot.com/');
                        },
                        color: myColors.primaryColor,
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
