import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/links.dart';
import 'package:portfolio/colors.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({Key key, this.webpage}) : super(key: key);

  final Webpage webpage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  kAppName,
                  style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  kTagLine,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Color(0x66ffffff),
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              WebpageLink(
                name: "Home",
                isActiveLink: webpage == Webpage.home ? true : false,
                onPressed: () {
                  Navigator.pushNamed(context, kHomePage);
                },
              ),
              WebpageLink(
                name: "About Me",
                isActiveLink: webpage == Webpage.about ? true : false,
                onPressed: () {
                  Navigator.pushNamed(context, kAboutPage);
                },
              ),
              WebpageLink(
                name: "Projects",
                isActiveLink: webpage == Webpage.projects ? true : false,
                onPressed: () {
                  Navigator.pushNamed(context, kProjectsPage);
                },
              ),
              WebpageLink(
                name: "Skills",
                isActiveLink: webpage == Webpage.skills ? true : false,
                onPressed: () {
                  Navigator.pushNamed(context, kSkillsPage);
                },
              ),
              WebpageLink(
                name: "Contact Me",
                isActiveLink: webpage == Webpage.contact ? true : false,
                onPressed: () {
                  Navigator.pushNamed(context, kContactPage);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade900, Colors.blue.shade300],
                stops: [0.0, 0.7],
              ),
            ),
            /*decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/comp.jpg"))),*/
            accountName: Text(
              'Parth Singh',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            accountEmail: Text(
              'parth.singh71@gmail.com',
              style: TextStyle(
                  color: Color(0x99FFFFFF), fontWeight: FontWeight.w100),
            ),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x1A000000),
                      spreadRadius: 1.0,
                      blurRadius: 2.0,
                    )
                  ]),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/ps.jpg'),
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(
              Icons.home,
              color: myColors.primaryColor,
            ),
            onTap: () => Navigator.popAndPushNamed(context, kHomePage),
          ),
          ListTile(
            title: Text('About Me'),
            leading: Icon(
              Icons.info,
              color: myColors.primaryColor,
            ),
            onTap: () => Navigator.popAndPushNamed(context, kAboutPage),
          ),
          ListTile(
            title: Text('Projects'),
            leading: Icon(
              FlutterIcons.application_mco,
              color: myColors.primaryColor,
            ),
            onTap: () => Navigator.popAndPushNamed(context, kProjectsPage),
          ),
          ListTile(
              title: Text('Skills'),
              leading: Icon(
                Icons.code,
                color: myColors.primaryColor,
              ),
              onTap: () => Navigator.popAndPushNamed(context, kSkillsPage)),
          ListTile(
              title: Text('Contact Me'),
              leading: Icon(
                Icons.account_circle,
                color: myColors.primaryColor,
              ),
              onTap: () => Navigator.popAndPushNamed(context, kContactPage)),
        ],
      ),
    );
  }
}

// List<Widget> getHeaderLinks() {
//   var links = ["Home", "About Me", "Projects", "Contact Me"];
//   return links.map((link) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Text(
//         link,
//         style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.5)),
//       ),
//     );
//   }).toList();
// }
