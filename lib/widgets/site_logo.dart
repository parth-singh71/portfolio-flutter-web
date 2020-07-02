import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            kAppName,
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 50.0,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            kTagLine,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Color(0x66ffffff),
              fontSize: 17.0,
            ),
          ),
        ],
      ),
    );
  }
}
