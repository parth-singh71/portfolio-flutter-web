import 'package:flutter/material.dart';

class FatDivider extends StatelessWidget {
  const FatDivider({Key key, this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 10.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: color != null ? color : Colors.black,
      ),
    );
  }
}
