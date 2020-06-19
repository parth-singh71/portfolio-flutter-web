import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/footer_icon.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

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
              FooterIcon(iconData: Icons.alternate_email),
              SizedBox(width: 30.0),
              FooterIcon(iconData: FontAwesome.facebook),
              SizedBox(width: 30.0),
              FooterIcon(iconData: FontAwesome.stack_overflow),
              SizedBox(width: 30.0),
              FooterIcon(iconData: FontAwesome.github),
              SizedBox(width: 30.0),
              FooterIcon(iconData: FontAwesome.instagram),
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
                    ]..addAll(getFooterProjectLinks()),
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
                    ]..addAll(getFooterProjectLinks()),
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
                    ]..addAll(getFooterImportantLinks()),
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

List<Widget> getFooterProjectLinks() {
  var links = [
    "Writers Blog",
    "Facial Feature Detection",
    "Body Part Detection",
    "Vision Board",
    "Friday AI"
  ];
  return links.map((link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        link,
        style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.5)),
      ),
    );
  }).toList();
}

List<Widget> getFooterImportantLinks() {
  var links = ["Home", "About Me", "Projects", "Blog", "Contact Me"];
  return links.map((link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        link,
        style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.5)),
      ),
    );
  }).toList();
}
