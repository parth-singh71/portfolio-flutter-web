import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/header.dart';

class BasicWebpage extends StatelessWidget {
  const BasicWebpage(
      {Key key, this.body, this.webpage, this.customBody, this.backgroundColor})
      : super(key: key);

  final Widget body, customBody;
  final Webpage webpage;
  final Color backgroundColor;

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
                    Header(webpage: webpage),
                    body,
                    Footer(),
                  ],
                ),
              ),
            ),
    );
  }
}
