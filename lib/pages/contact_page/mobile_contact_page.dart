import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpages/basic_webpage.dart';
import 'package:portfolio/widgets/contact_tiles.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:portfolio/widgets/fat_divider.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileContactPage extends StatefulWidget {
  MobileContactPage({Key key}) : super(key: key);

  @override
  _MobileContactPageState createState() => _MobileContactPageState();
}

class _MobileContactPageState extends State<MobileContactPage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      pageTitle: "Contact Me",
      webpage: Webpage.contact,
      body: body(),
    );
  }

  Widget body() {
    return Container(
      child: Column(
        children: [
          Text(
            'Contact Me',
            style: myStyles.tsMobileHeading,
          ),
          FatDivider(),
          SizedBox(height: 50.0),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TyperAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Hey, wanna talk to me or do you need help with your code or maybe want to colaborate on an awesome project? Feel free to text or mail me, I'll get back to you as soon as possible. ;)",
                  ],
                  textStyle: myStyles.tsMobileSimpleTyper,
                  isRepeatingAnimation: false,
                  speed: Duration(milliseconds: 80),
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.topStart,
                ),
                SizedBox(height: 20.0),
                ElevatedContainer(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      Hero(
                        tag: "myDP",
                        child: ClipRRect(
                          child: Image.asset('images/ps.jpg'),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ContactTile(
                        title: 'Email',
                        subtitle: 'parth.singh71@gmail.com',
                        icon: Icons.email,
                        urlLink: contactLinks.email,
                      ),
                      ContactTile(
                        title: 'Github',
                        subtitle: 'parth-singh71',
                        icon: FontAwesome.github,
                        urlLink: contactLinks.github,
                      ),
                      ContactTile(
                        title: 'StackOverflow',
                        subtitle: 'parth.singh71',
                        icon: FontAwesome.stack_overflow,
                        urlLink: contactLinks.stack_overflow,
                      ),
                      ContactTile(
                        title: 'Play Store',
                        subtitle: 'Psect',
                        icon: FontAwesome5Brands.google_play,
                        urlLink: contactLinks.google_play,
                      ),
                      ContactTile(
                        title: 'LinkedIn',
                        subtitle: 'parthsingh71',
                        icon: FontAwesome.linkedin,
                        urlLink: contactLinks.linkedin,
                      ),
                      ContactTile(
                        title: 'Facebook',
                        subtitle: 'parth.singh71@gmail.com',
                        icon: FontAwesome.facebook,
                        urlLink: contactLinks.facebook,
                      ),
                      ContactTile(
                        title: 'Instagram',
                        subtitle: 'parth.singh71',
                        icon: FontAwesome.instagram,
                        urlLink: contactLinks.instagram,
                      ),
                      ContactTile(
                        title: 'Twitter',
                        subtitle: 'parth_singh71',
                        icon: FontAwesome.twitter,
                        urlLink: contactLinks.twitter,
                      ),
                      SizedBox(height: 20.0),
                      Text("Connect with me today!", style: myStyles.tsWebText),
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
                            'Mail Me',
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
}
