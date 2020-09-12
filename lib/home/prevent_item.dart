import 'package:covid_19/constant/constant.dart';
import 'package:flutter/material.dart';


class PreventionItem extends StatelessWidget {
  const PreventionItem({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                color: kTextSecColor.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 4)
          ]),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              "$title",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 80,
              width: 80,
              child: Image.asset('$image'),
            ),
          )
        ],
      ),
    );
  }
}