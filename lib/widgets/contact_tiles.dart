import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/colors.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key key,
    this.title,
    this.subtitle,
    this.icon,
    this.iconColor,
    this.margin,
    this.urlLink,
    this.iconPaddingColor,
    this.titleStyle,
    this.subtitleStyle,
  }) : super(key: key);

  final String title, subtitle;
  final IconData icon;
  final Color iconColor, iconPaddingColor;
  final TextStyle titleStyle, subtitleStyle;
  final EdgeInsetsGeometry margin;
  final String urlLink;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: DesktopContactTile(
        title: title,
        subtitle: subtitle,
        icon: icon,
        urlLink: urlLink,
        margin: margin,
        titleStyle: titleStyle,
        iconPaddingColor: iconPaddingColor,
        iconColor: iconColor,
        key: key,
        subtitleStyle: subtitleStyle,
      ),
      smallScreen: MobileContactTile(
        title: title,
        subtitle: subtitle,
        icon: icon,
        urlLink: urlLink,
        margin: margin,
        titleStyle: titleStyle,
        iconPaddingColor: iconPaddingColor,
        iconColor: iconColor,
        key: key,
        subtitleStyle: subtitleStyle,
      ),
    );
  }
}

class DesktopContactTile extends StatelessWidget {
  const DesktopContactTile({
    Key key,
    this.title,
    this.subtitle,
    this.icon,
    this.iconColor,
    this.margin,
    this.urlLink,
    this.iconPaddingColor,
    this.titleStyle,
    this.subtitleStyle,
  }) : super(key: key);

  final String title, subtitle;
  final IconData icon;
  final Color iconColor, iconPaddingColor;
  final TextStyle titleStyle, subtitleStyle;
  final EdgeInsetsGeometry margin;
  final String urlLink;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (urlLink.isNotEmpty) {
          launch(urlLink);
        }
      },
      child: ListTile(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: titleStyle != null ? titleStyle : myStyles.tsWebText),
            Text(subtitle,
                style: subtitleStyle != null
                    ? subtitleStyle
                    : myStyles.tsWebText.copyWith(fontSize: 20.0)),
          ],
        ),
        leading: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: iconPaddingColor != null
                  ? iconPaddingColor
                  : Colors.blue.shade500,
              borderRadius: BorderRadius.circular(300)),
          child: Icon(
            icon,
            color: iconColor != null ? iconColor : Colors.white,
            size: 30.0,
          ),
        ),
//
      ),
    );
  }
}

class MobileContactTile extends StatelessWidget {
  const MobileContactTile({
    Key key,
    this.title,
    this.subtitle,
    this.icon,
    this.iconColor,
    this.margin,
    this.urlLink,
    this.iconPaddingColor,
    this.titleStyle,
    this.subtitleStyle,
  }) : super(key: key);

  final String title, subtitle;
  final IconData icon;
  final Color iconColor, iconPaddingColor;
  final TextStyle titleStyle, subtitleStyle;
  final EdgeInsetsGeometry margin;
  final String urlLink;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (urlLink.isNotEmpty) {
          launch(urlLink);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        child: ListTile(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: titleStyle != null
                      ? titleStyle
                      : myStyles.tsMobileWebText),
              Text(
                subtitle,
                style: subtitleStyle != null
                    ? subtitleStyle
                    : myStyles.tsMobileWebText.copyWith(fontSize: 15.0),
              ),
            ],
          ),
          leading: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: iconPaddingColor != null
                    ? iconPaddingColor
                    : Colors.blue.shade500,
                borderRadius: BorderRadius.circular(300)),
            child: Icon(
              icon,
              color: iconColor != null ? iconColor : Colors.white,
              size: 25.0,
            ),
          ),
//
        ),
      ),
    );
  }
}
