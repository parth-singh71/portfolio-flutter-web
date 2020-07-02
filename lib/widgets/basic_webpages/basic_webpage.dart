import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/utils/responsive_widget.dart';
import 'package:portfolio/widgets/basic_webpages/desktop_webpage.dart';
import 'package:portfolio/widgets/basic_webpages/mobile_webpage.dart';
import 'package:portfolio/widgets/basic_webpages/tablet_webpage.dart';

class BasicWebpage extends StatelessWidget {
  const BasicWebpage({
    Key key,
    this.body,
    this.webpage,
    this.customBody,
    this.backgroundColor,
    @required this.pageTitle,
  }) : super(key: key);

  final Widget body, customBody;
  final Webpage webpage;
  final Color backgroundColor;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopWebpage(
        backgroundColor: backgroundColor,
        customBody: customBody,
        webpage: webpage,
        body: body,
      ),
//      mediumScreen: TabletWebpage(
//        backgroundColor: backgroundColor,
//        customBody: customBody,
//        webpage: webpage,
//        body: body,
//      ),
      smallScreen: MobileWebpage(
        pageTitle: pageTitle,
        backgroundColor: backgroundColor,
        customBody: customBody,
        webpage: webpage,
        body: body,
      ),
    );
  }
}
