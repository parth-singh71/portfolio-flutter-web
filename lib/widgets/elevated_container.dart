import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  ElevatedContainer({
    @required this.child,
    this.margin,
    this.padding,
    this.blurRadius,
    this.bottomOffset,
    this.rightOffset,
    this.spreadRadius,
    this.borderRadius,
    this.isWidthInfinity,
  });

  final Widget child;
  final EdgeInsetsGeometry padding, margin;
  final double blurRadius, spreadRadius, rightOffset, bottomOffset;
  final BorderRadius borderRadius;
  final bool isWidthInfinity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isWidthInfinity != null
          ? (isWidthInfinity ? double.infinity : null)
          : null,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            borderRadius != null ? borderRadius : BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius:
                blurRadius != null ? blurRadius : 2.0, // soften the shadow
            spreadRadius:
                spreadRadius != null ? spreadRadius : 1.0, //extend the shadow
            offset: Offset(
              rightOffset != null
                  ? rightOffset
                  : 1.0, // Move to right 10  horizontally
              bottomOffset != null
                  ? rightOffset
                  : 1.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      padding: padding != null
          ? padding
          : EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
      margin: margin != null ? margin : EdgeInsets.all(10.0),
      child: child,
    );
  }
}
