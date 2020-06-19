
import 'package:flutter/material.dart';

class ResponsiveHelper {
  dynamic getResponsiveProperty({context, smProp, mdProp, lgProp}) {
    if (isLargeScreen(context)) {
      return lgProp;
    } else if (isMediumScreen(context)) {
      return mdProp;
    }
    if (isSmallScreen(context)) {
      return smProp;
    }
  }

  /*
  Large screen is any screen whose
  width is more than 1200 pixels
  */
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  /*
  Medium screen is any screen whose
  width is less than 1200 pixels, and
  more than 800 pixels
  */
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  /*
  Small screen is any screen whose
  width is less than 800 pixels
  */
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }
}
