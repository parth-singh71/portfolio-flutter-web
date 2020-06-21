import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class WebText extends StatelessWidget {
  const WebText({
    Key key,
    @required this.text,
    this.style,
  }) : super(key: key);

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: style!=null? style: myStyles.tsWebText,
    );
  }
}
