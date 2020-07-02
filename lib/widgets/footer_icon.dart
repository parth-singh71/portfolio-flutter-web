import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterIcon extends StatelessWidget {
  const FooterIcon({
    Key key,
    @required this.iconData,
    @required this.link,
  }) : super(key: key);

  final IconData iconData;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(link);
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.blue.shade600,
            borderRadius: BorderRadius.circular(300)),
        child: Icon(
          iconData,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }
}
