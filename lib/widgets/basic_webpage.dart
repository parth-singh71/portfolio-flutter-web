
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/header.dart';

class BasicWebpage extends StatelessWidget {
  const BasicWebpage({
    Key key, this.body, this.webpage
  }) : super(key: key);

  final Widget body;
  final Webpage webpage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
