import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/utils/responsive_widget.dart';
import 'package:portfolio/widgets/footers/desktop_footer.dart';
import 'package:portfolio/widgets/footers/mobile_footer.dart';

class Footer extends StatelessWidget {
  const Footer({Key key, this.webpage}) : super(key: key);

  final Webpage webpage;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopFooter(webpage: webpage),
//      mediumScreen: TabletFooter(webpage: webpage),
      smallScreen: MobileFooter(webpage: webpage),
    );
  }
}
