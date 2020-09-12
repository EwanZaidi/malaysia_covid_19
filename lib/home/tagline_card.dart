import 'package:covid_19/constant/constant.dart';
import 'package:flutter/material.dart';

class TaglineCard extends StatelessWidget {
  const TaglineCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(top: 30, bottom: 30, left: 8, right : 35),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: kPrimaryColor,
        image: DecorationImage(
          scale: 1.4,
          alignment: Alignment.centerLeft,
          image: AssetImage('assets/images/doctor.png'),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("STAY AT HOME", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
          Text("BE SAFE", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
          Text("PRAY 4 MALAYSIA", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),)
        ],
      )
    );
  }
}