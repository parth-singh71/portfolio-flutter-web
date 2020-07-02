import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/utils/responsive_widget.dart';
import 'package:portfolio/widgets/footers/desktop_footer.dart';
import 'package:portfolio/widgets/footers/mobile_footer.dart';
import 'package:portfolio/widgets/footers/tablet_footer.dart';
import 'package:portfolio/widgets/headers/desktop_header.dart';
import 'package:portfolio/widgets/headers/tablet_header.dart';

import '../headers/mobile_header.dart';

class BasicWebpage extends StatelessWidget {
  const BasicWebpage(
      {Key key, this.body, this.webpage, this.customBody, this.backgroundColor})
      : super(key: key);

  final Widget body, customBody;
  final Webpage webpage;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopWebpage(
        backgroundColor: backgroundColor,
        customBody: customBody,
        webpage: webpage,
        body: body,
      ),
    );
  }
}

class DesktopWebpage extends StatelessWidget {
  const DesktopWebpage({
    Key key,
    @required this.backgroundColor,
    @required this.customBody,
    @required this.webpage,
    @required this.body,
  }) : super(key: key);

  final Color backgroundColor;
  final Widget customBody;
  final Webpage webpage;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          backgroundColor != null ? backgroundColor : Colors.blue.shade50,
      body: customBody != null
          ? customBody
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DesktopHeader(webpage: webpage),
                    body,
                    DesktopFooter(webpage: webpage),
                  ],
                ),
              ),
            ),
    );
  }
}
