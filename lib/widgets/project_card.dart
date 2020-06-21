import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/widgets/elevated_container.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    @required this.context,
    @required this.description,
    this.imagePath,
    @required this.onPressed,
    @required this.title,
    @required this.technologies,
    @required this.timePeriod,
    this.librariesNServices,
    this.isIndividualProject,
  }) : super(key: key);

  final BuildContext context;
  final String imagePath,
      title,
      description,
      timePeriod,
      technologies,
      librariesNServices;
  final bool isIndividualProject;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedContainer(
        isWidthInfinity: false,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imagePath != null
                ? Image.asset(imagePath, height: 200.0)
                : SizedBox(),
            imagePath != null ? SizedBox(height: 20.0) : SizedBox(),
            Text(
              title,
              textAlign: TextAlign.center,
              style: myStyles.tsWebText.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
            Text(
              "$timePeriod | ${isIndividualProject != null ? (isIndividualProject ? "Individual Project" : "Group Project") : "Individual Project"}",
              style: myStyles.tsWebText.copyWith(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            Text(
              description,
              style: myStyles.tsWebText,
              textAlign: TextAlign.center,
            ),
            Text(
              "$technologies${librariesNServices != null ? " - $librariesNServices" : ""}",
              style: myStyles.tsWebText.copyWith(fontSize: 15.0),
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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
