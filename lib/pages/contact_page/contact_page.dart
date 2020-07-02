import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/pages/contact_page/desktop_contact_page.dart';
import 'package:portfolio/pages/contact_page/mobile_contact_page.dart';
import 'package:portfolio/pages/contact_page/tablet_contact_page.dart';
import 'package:portfolio/utils/responsive_widget.dart';
import 'package:portfolio/widgets/contact_tiles.dart';
import 'package:portfolio/widgets/elevated_container.dart';
import 'package:portfolio/widgets/fat_divider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopContactPage(),
//      mediumScreen: TabletContactPage(),
      smallScreen: MobileContactPage(),
    );
  }
}
