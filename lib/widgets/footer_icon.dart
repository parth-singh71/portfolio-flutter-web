
import 'package:flutter/material.dart';

class FooterIcon extends StatelessWidget {
  // TODO: MAKE LINKS CLICKABLE
  const FooterIcon({
    Key key,
    @required this.iconData,
  }) : super(key: key);

  final iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.blue.shade600,
          borderRadius: BorderRadius.circular(300)),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 30.0,
      ),
    );
  }
}

