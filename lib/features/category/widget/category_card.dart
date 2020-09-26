import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final double scaleHeight;
  final double scaleWidth;
  final double sizeText;
  final IconData icon;
  final String title;
  const CategoryCard({
    Key key,
    this.scaleHeight,
    this.scaleWidth,
    this.sizeText,
    this.icon,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          height: scaleHeight * 70,
          width: scaleWidth * 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 35,
                child: Icon(
                  icon,
                ),
              ),
              SizedBox(height: scaleHeight * 3),
              Text(
                title,
                style: TextStyle(
                  fontSize: sizeText * 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    );
  }
}
