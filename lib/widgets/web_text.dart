import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/utils/responsive_widget.dart';

class WebText extends StatelessWidget {
  const WebText({
    Key key,
    @required this.text,
    this.style,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final TextStyle style;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Text(
        text,
        textAlign: textAlign != null ? textAlign : TextAlign.justify,
        style: style != null ? style : myStyles.tsWebText,
      ),
      mediumScreen: Text(
        text,
        textAlign: textAlign != null ? textAlign : TextAlign.justify,
        style: style != null ? style : myStyles.tsWebText,
      ),
      smallScreen: Text(
        text,
        textAlign: textAlign != null ? textAlign : TextAlign.justify,
        style: style != null ? style : myStyles.tsWebText,
      ),
    );
  }
}
