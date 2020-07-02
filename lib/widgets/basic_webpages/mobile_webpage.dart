import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/footers/mobile_footer.dart';
import 'package:portfolio/widgets/headers/mobile_header.dart';

class MobileWebpage extends StatelessWidget {
  const MobileWebpage({
    Key key,
    @required this.backgroundColor,
    @required this.customBody,
    @required this.webpage,
    @required this.body,
    @required this.pageTitle,
  }) : super(key: key);

  final Color backgroundColor;
  final Widget customBody;
  final Webpage webpage;
  final Widget body;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          backgroundColor != null ? backgroundColor : Colors.blue.shade50,
      appBar: webpage != Webpage.home
          ? AppBar(
              title: Text(
                pageTitle,
                style: myStyles.tsAppBarTitle,
              ),
              centerTitle: false,
              elevation: 4.0,
              backgroundColor: myColors.primaryColor,
//        brightness: Brightness.dark,
            )
          : null,
      endDrawer: MobileDrawer(),
      body: customBody != null
          ? customBody
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
//                    MobileHeader(webpage: webpage),
                    body,
                    MobileFooter(webpage: webpage),
                  ],
                ),
              ),
            ),
    );
  }
}
