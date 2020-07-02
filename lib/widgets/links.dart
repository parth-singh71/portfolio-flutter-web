import 'package:flutter/material.dart';

class WebpageLink extends StatelessWidget {
  const WebpageLink(
      {Key key,
      @required this.name,
      @required this.onPressed,
      @required this.isActiveLink})
      : super(key: key);

  final Function onPressed;
  final String name;
  final bool isActiveLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 18.0,
                  color: isActiveLink
                      ? Colors.white.withOpacity(0.8)
                      : Colors.white.withOpacity(0.5),
                  fontWeight:
                      isActiveLink ? FontWeight.bold : FontWeight.normal),
            ),
            isActiveLink
                ? Container(
                    height: 2.0,
                    width: 40.0,
                    color: Colors.white.withOpacity(0.8),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
