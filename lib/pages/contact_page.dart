import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpage.dart';
import 'package:portfolio/widgets/contact_tiles.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      webpage: Webpage.contact,
      body: body(),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Contact Me',
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
            margin: EdgeInsets.symmetric(horizontal: 100.0),
            child: Column(
              children: [
                //TODO: code here
                TyperAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Hey, wanna talk to me or do you need help with your code or maybe want to colaborate on an awesome project? Feel free to text or mail me, I'll get back to you as soon as possible. ;)",
                  ],
                  textStyle: myStyles.tsWebText,
                  isRepeatingAnimation: false,
                  speed: Duration(milliseconds: 80),
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.topStart,
                ),
                ElevatedContainer(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Hero(
                              tag: "myDP",
                              child: ClipRRect(
                                child: Image.asset('images/ps.jpg'),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ContactTile(
                                  title: 'Email',
                                  subtitle: 'parth.singh71@gmail.com',
                                  icon: Icons.email,
                                  urlLink: 'mailto:parth.singh71@gmail.com',
                                ),
                                ContactTile(
                                  title: 'Github',
                                  subtitle: 'parth-singh71',
                                  icon: FontAwesome.github,
                                  urlLink: 'https://github.com/parth-singh71',
                                ),
                                ContactTile(
                                  title: 'StackOverflow',
                                  subtitle: 'parth.singh71',
                                  icon: FontAwesome.stack_overflow,
                                  urlLink:
                                      'https://stackoverflow.com/users/10129545/parth-singh71',
                                ),
                                ContactTile(
                                  title: 'Play Store',
                                  subtitle: 'Psect',
                                  icon: FontAwesome5Brands.google_play,
                                  urlLink:
                                      'https://play.google.com/store/apps/developer?id=Psect',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ContactTile(
                                  title: 'LinkedIn',
                                  subtitle: 'parthsingh71',
                                  icon: FontAwesome.linkedin,
                                  urlLink:
                                      'https://www.linkedin.com/in/parthsingh71/',
                                ),
                                ContactTile(
                                  title: 'Facebook',
                                  subtitle: 'parth.singh71@gmail.com',
                                  icon: FontAwesome.facebook,
                                  urlLink:
                                      'https://www.facebook.com/parth.singh3371',
                                ),
                                ContactTile(
                                  title: 'Instagram',
                                  subtitle: 'parth.singh71',
                                  icon: FontAwesome.instagram,
                                  urlLink:
                                      'https://www.instagram.com/parth.singh71/',
                                ),
                                ContactTile(
                                  title: 'Twitter',
                                  subtitle: 'parth_singh71',
                                  icon: FontAwesome.twitter,
                                  urlLink: 'https://twitter.com/parth_singh71',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 50.0),
                      Text("Connect with me today!", style: myStyles.tsWebText),
                      SizedBox(height: 20.0),
                      Container(
                        width: 300.0,
                        height: 50.0,
                        margin: EdgeInsets.all(0.0),
                        child: RaisedButton(
                          onPressed: () {
                            launch('mailto:parth.singh71@gmail.com');
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
