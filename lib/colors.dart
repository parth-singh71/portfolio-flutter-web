//import 'package:flutter/material.dart';
//
////colors
//const colPrimary = Color(0xFF53c2c9);
//final colPrimaryDark = Color(0xFF439da3);
//final colPrimaryLight = Color(0xFF60e2eb);
//
//const colAccent = Color(0xFFf4ea8e);
//const colAccentLight = Color(0xFFf5fb9f);
//
//const colTextPrimary = Color(0xD9000000);
//const colTextSecondary = Color(0x99000000);
//const colTextSecondaryLight = Color(0x66000000);
//const colTextOnPrimary = colTextPrimary;
//const colTextOnAccent = Color(0xD9000000);
//const colTextSecondaryOnAccent = Color(0x99000000);
//
//const colBackground = Color(0xFFF6F8FA);
//const colButtonPrimary = colAccent;
//
//const colIcon = colTextPrimary;
//const colIconGrey = Color(0xFF757575);
//
////text styles
//const tsPrimary = TextStyle(color: colTextPrimary);
//const tsSecondary = TextStyle(color: colTextSecondary);
//const tsSecondaryLight = TextStyle(color: colTextSecondaryLight);
//const tsOnPrimary = TextStyle(color: Colors.white);
//const tsOnAccent = TextStyle(color: colTextOnAccent);
//const tsSecondaryOnAccent = TextStyle(color: colTextSecondaryOnAccent);
//const tsPrimaryHeading = TextStyle(color: colTextPrimary, fontSize: 20.0);
//
////theme data
//const tdIconTheme = IconThemeData(color: colIcon);

import 'dart:ui';
import 'package:flutter/material.dart';

mixin myColors {
  static const Color primaryColor = Color(0xff000000);
  static const Color secondaryColor = Color(0xee000000);
  static Color accentColor = Colors.blue;
  static const colTextPrimary = Color(0xffffffff);
  static const colTextSecondary = Color(0x66ffffff);
  static const colTextSecondaryLight = Color(0x33ffffff);
  static const colTextOnPrimary = colTextPrimary;
  static const colTextOnAccent = Color(0xffffffff);
  static const colTextSecondaryOnAccent = Color(0x99ffffff);
}

mixin myStyles {
  static const tsPrimary = TextStyle(color: myColors.colTextPrimary);
  static const tsSecondary = TextStyle(color: myColors.colTextSecondary);
  static const tsSecondaryLight =
      TextStyle(color: myColors.colTextSecondaryLight);
  static const tsOnPrimary = TextStyle(color: Colors.white);
  static const tsOnAccent = TextStyle(color: myColors.colTextOnAccent);
  static const tsSecondaryOnAccent =
      TextStyle(color: myColors.colTextSecondaryOnAccent);
  static const tsPrimaryHeading =
      TextStyle(color: myColors.colTextPrimary, fontSize: 20.0);
  static const tsWebText =
      TextStyle(fontSize: 30.0, height: 1.5);
}
