import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/widgets/elevated_container.dart';

class MobileProjectCard extends StatelessWidget {
  const MobileProjectCard({
    Key key,
    @required this.context,
    @required this.projectSummary,
    this.imagePath,
    @required this.onPressed,
    @required this.projectTitle,
    @required this.technologies,
    @required this.projectDuration,
    this.librariesNServices,
    this.isIndividualProject,
  }) : super(key: key);

  final BuildContext context;
  final String imagePath,
      projectTitle,
      projectSummary,
      projectDuration,
      technologies,
      librariesNServices;
  final bool isIndividualProject;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return BaseProjectCard(
      imagePath: imagePath,
      projectTitle: projectTitle,
      projectDuration: projectDuration,
      isIndividualProject: isIndividualProject,
      projectSummary: projectSummary,
      technologies: technologies,
      librariesNServices: librariesNServices,
      onPressed: onPressed,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      titleStyle: myStyles.tsMobileWebText.copyWith(
        fontWeight: FontWeight.bold,
      ),
      durationStyle: myStyles.tsMobileWebText.copyWith(
        fontSize: 13.0,
        color: Color(0x99000000),
      ),
      summaryStyle: myStyles.tsMobileWebText,
      technologiesStyle: myStyles.tsMobileWebText.copyWith(
        fontSize: 13.0,
        color: Color(0x99000000),
      ),
      buttonStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      gap: SizedBox(height: 10.0),
    );
  }
}

class DesktopProjectCard extends StatelessWidget {
  const DesktopProjectCard({
    Key key,
    @required this.context,
    @required this.projectSummary,
    this.imagePath,
    @required this.onPressed,
    @required this.projectTitle,
    @required this.technologies,
    @required this.projectDuration,
    this.librariesNServices,
    this.isIndividualProject,
  }) : super(key: key);

  final BuildContext context;
  final String imagePath,
      projectTitle,
      projectSummary,
      projectDuration,
      technologies,
      librariesNServices;
  final bool isIndividualProject;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BaseProjectCard(
        imagePath: imagePath,
        projectTitle: projectTitle,
        projectDuration: projectDuration,
        isIndividualProject: isIndividualProject,
        projectSummary: projectSummary,
        technologies: technologies,
        librariesNServices: librariesNServices,
        onPressed: onPressed,
        titleStyle: myStyles.tsWebText.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 35.0,
        ),
        durationStyle: myStyles.tsWebText.copyWith(
          fontSize: 15.0,
        ),
        summaryStyle: myStyles.tsWebText,
        technologiesStyle: myStyles.tsWebText.copyWith(
          fontSize: 15.0,
        ),
        buttonStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class BaseProjectCard extends StatelessWidget {
  const BaseProjectCard({
    Key key,
    @required this.imagePath,
    @required this.projectTitle,
    @required this.projectDuration,
    @required this.isIndividualProject,
    @required this.projectSummary,
    @required this.technologies,
    @required this.librariesNServices,
    @required this.onPressed,
    this.padding,
    this.margin,
    this.titleStyle,
    this.durationStyle,
    this.summaryStyle,
    this.technologiesStyle,
    this.buttonStyle,
    this.gap,
  }) : super(key: key);

  final String imagePath;
  final String projectTitle;
  final String projectDuration;
  final bool isIndividualProject;
  final String projectSummary;
  final String technologies;
  final String librariesNServices;
  final Function onPressed;
  final EdgeInsetsGeometry margin, padding;
  final TextStyle titleStyle,
      durationStyle,
      summaryStyle,
      technologiesStyle,
      buttonStyle;
  final SizedBox gap;

  @override
  Widget build(BuildContext context) {
    return ElevatedContainer(
      isWidthInfinity: false,
      margin: margin != null ? margin : EdgeInsets.all(20.0),
      padding: padding != null ? padding : EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imagePath != null
              ? Image.asset(imagePath, height: 200.0)
              : SizedBox(),
          imagePath != null ? SizedBox(height: 20.0) : SizedBox(),
          Text(
            projectTitle,
            textAlign: TextAlign.center,
            style: titleStyle,
          ),
          Text(
            "$projectDuration | ${isIndividualProject != null ? (isIndividualProject ? "Individual Project" : "Group Project") : "Individual Project"}",
            style: durationStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.0),
          Text(
            projectSummary,
            style: summaryStyle,
            textAlign: TextAlign.center,
          ),
          gap != null ? gap : SizedBox(),
          Text(
            "$technologies${librariesNServices != null ? " - $librariesNServices" : ""}",
            style: technologiesStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          Container(
            width: 300.0,
            height: 50.0,
            margin: EdgeInsets.all(0.0),
            child: RaisedButton(
              onPressed: onPressed,
              color: Colors.green,
              child: Text(
                'View Details',
                style: buttonStyle,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
