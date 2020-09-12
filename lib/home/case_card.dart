import 'package:covid_19/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CaseCard extends StatelessWidget {
  const CaseCard({
    Key key, this.icon, this.title, this.cases, this.color,
  }) : super(key: key);

  final String icon;
  final String title;
  final int cases;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 120,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              color: kTextSecColor.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: color.withOpacity(0.5),
                border: Border.all(
                  color: color,
                ),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset('$icon'),
            ),
            SizedBox(height: 15),
            Text("$cases", style: TextStyle(color: color, fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 15),
            Text("$title", style: TextStyle(color: kTextSecColor, fontWeight: FontWeight.bold,),)
          ],
        ));
  }
}