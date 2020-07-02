import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/footer_icon.dart';
import 'package:portfolio/widgets/links.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({Key key, this.webpage}) : super(key: key);

  final Webpage webpage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FooterIcon(
                iconData: Icons.alternate_email,
                link: contactLinks.email,
              ),
              SizedBox(width: 30.0),
              FooterIcon(
                iconData: FontAwesome.facebook,
                link: contactLinks.facebook,
              ),
              SizedBox(width: 30.0),
              FooterIcon(
                iconData: FontAwesome.stack_overflow,
                link: contactLinks.stack_overflow,
              ),
              SizedBox(width: 30.0),
              FooterIcon(
                iconData: FontAwesome.github,
                link: contactLinks.github,
              ),
              SizedBox(width: 30.0),
              FooterIcon(
                iconData: FontAwesome.instagram,
                link: contactLinks.instagram,
              ),
            ],
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Parth Singh',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "parth.singh71@gmail.com",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.green.shade300,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        aboutShortText,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 300.0,
                        height: 50.0,
                        margin: EdgeInsets.all(0.0),
                        child: RaisedButton(
                          onPressed: () {
                            launch(contactLinks.email);
                          },
                          color: Colors.green,
                          child: Text(
                            "Let's connect, Mail Me today!",
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
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Top Projects',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ]..addAll(getFooterProjectLinks(context)),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Project Gallery',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ]..addAll(getFooterProjectLinks(context)),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Important Links',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ]..addAll(getFooterImportantLinks(context)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50.0),
          Text(
            'Copyright © 2020 Parth Singh',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

List<Widget> getFooterProjectLinks(BuildContext context) {
  return [
    FooterLink(
      name: "Writers Blog",
      onPressed: () {
        Navigator.pushNamed(context, kpWritersBlog);
      },
    ),
    FooterLink(
      name: "Facial Feature Detection",
      onPressed: () {
        Navigator.pushNamed(context, kpFacialFeature);
      },
    ),
    FooterLink(
      name: "Body Part Detection",
      onPressed: () {
        Navigator.pushNamed(context, kpBodyPart);
      },
    ),
    FooterLink(
      name: "Vision Board",
      onPressed: () {
        Navigator.pushNamed(context, kpVisionBoard);
      },
    ),
    FooterLink(
      name: "Timeable",
      onPressed: () {
        Navigator.pushNamed(context, kpTimeable);
      },
    ),
    FooterLink(
      name: "Friday AI",
      onPressed: () {
        Navigator.pushNamed(context, kpFridayAI);
      },
    ),
  ];
//  var links = [
//    "Writers Blog",
//    "Facial Feature Detection",
//    "Body Part Detection",
//    "Vision Board",
//    "Friday AI"
//  ];
//  return links.map((link) {
//    return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Text(
//        link,
//        style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.5)),
//      ),
//    );
//  }).toList();
}

List<Widget> getFooterImportantLinks(BuildContext context) {
  return [
    FooterLink(
      name: "Home",
      onPressed: () {
        Navigator.pushNamed(context, kHomePage);
      },
    ),
    FooterLink(
      name: "About Me",
      onPressed: () {
        Navigator.pushNamed(context, kAboutPage);
      },
    ),
    FooterLink(
      name: "Projects",
      onPressed: () {
        Navigator.pushNamed(context, kProjectsPage);
      },
    ),
    FooterLink(
      name: "Skills",
      onPressed: () {
        Navigator.pushNamed(context, kSkillsPage);
      },
    ),
    FooterLink(
      name: "Blog",
      onPressed: () {
        launch('https://thededicatedprogrammer.blogspot.com/');
      },
    ),
    FooterLink(
      name: "Contact Me",
      onPressed: () {
        Navigator.pushNamed(context, kContactPage);
      },
    ),
  ];
//  var links = ["Home", "About Me", "Projects", "Blog", "Contact Me"];
//  return links.map((link) {
//    return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Text(
//        link,
//        style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.5)),
//      ),
//    );
//  }).toList();
}
