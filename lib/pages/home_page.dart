import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpage.dart';

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
            SizedBox(height: 50.0),
          ],
        ),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
