import 'package:covid_19/constant/constant.dart';
import 'package:covid_19/home/prevent_item.dart';
import 'package:flutter/material.dart';

class PreventionCard extends StatelessWidget {
  const PreventionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text("Prevent Getting Sick",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PreventionItem(
                  image: 'assets/images/touch_face.png',
                  title: "Don't touch face"),
              PreventionItem(
                  image: 'assets/images/wash_hand.png',
                  title: "Wash hand"),
              PreventionItem(
                  image: 'assets/images/ use_mask.png',
                  title: "Use face mask"),
            ],
          )
        ],
      ),
    );
  }
}