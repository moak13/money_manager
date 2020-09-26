import 'package:flutter/material.dart';

class BoardDisplay extends StatelessWidget {
  final String title;
  final double amount;
  final double sizeText;
  const BoardDisplay({Key key, this.title, this.amount, this.sizeText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: sizeText * 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            amount.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: sizeText * 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
