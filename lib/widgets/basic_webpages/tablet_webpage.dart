import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/footers/desktop_footer.dart';
import 'package:portfolio/widgets/headers/desktop_header.dart';


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
