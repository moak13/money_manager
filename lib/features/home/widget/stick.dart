import 'package:flutter/material.dart';

class Stick extends StatelessWidget {
  final double scaleHeight;
  final double scaleWidth;
  const Stick({Key key, this.scaleHeight, this.scaleWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: scaleHeight * 9.99,
      width: scaleWidth * 1.00,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3)),
    );
  }
}
