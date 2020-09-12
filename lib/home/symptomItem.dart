import 'package:covid_19/constant/constant.dart';
import 'package:flutter/material.dart';

class SymptomItem extends StatelessWidget {
  const SymptomItem({
    Key key, this.image, this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          child: Image.asset('$image'),
        ),
        SizedBox(height: 5),
        Text(
          "$title",
          style: TextStyle(
              color: kTextSecColor,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}