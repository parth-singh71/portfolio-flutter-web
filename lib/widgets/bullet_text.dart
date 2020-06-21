import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web_text.dart';

// class BulletText extends Text {
//   const BulletText(
//     String data, {
//     Key key,
//     TextStyle style,
//     TextAlign textAlign,
//     TextDirection textDirection,
//     Locale locale,
//     bool softWrap,
//     TextOverflow overflow,
//     double textScaleFactor,
//     int maxLines,
//     String semanticsLabel,
//   }) : super(
//           '• ${data}',
//           key: key,
//           style: style,
//           textAlign: textAlign,
//           textDirection: textDirection,
//           locale: locale,
//           softWrap: softWrap,
//           overflow: overflow,
//           textScaleFactor: textScaleFactor,
//           maxLines: maxLines,
//           semanticsLabel: semanticsLabel,
//         );
// }

class BulletText extends StatelessWidget {
  BulletText({this.text, this.style});
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              WebText(text: '•  '),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.justify,
                  style: style!=null? style : TextStyle(fontSize: 30.0, height: 1.5),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
