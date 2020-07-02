import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/links.dart';
import 'package:portfolio/widgets/site_logo.dart';
import 'package:portfolio/colors.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({Key key, this.webpage}) : super(key: key);

  final Webpage webpage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SiteLogo(),
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
