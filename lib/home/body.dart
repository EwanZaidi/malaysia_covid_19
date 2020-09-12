import 'package:covid_19/constant/constant.dart';
import 'package:covid_19/home/case_card.dart';
import 'package:covid_19/home/prevention_card.dart';
import 'package:covid_19/home/symptomItem.dart';
import 'package:covid_19/home/tagline_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TaglineCard(),
          overallCases(context),
          SizedBox(height: 10),
          symptomCard(context),
          SizedBox(height: 20),
          PreventionCard(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Padding symptomCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Symptoms",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    color: kTextSecColor.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 4,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SymptomItem(
                  title: "Headache",
                  image: "assets/images/headache.png",
                ),
                SymptomItem(
                  title: "Cough",
                  image: "assets/images/cough.png",
                ),
                SymptomItem(
                  title: "Fever",
                  image: "assets/images/fever.png",
                ),
                SymptomItem(
                  title: "Sore Throat",
                  image: "assets/images/sore_throat.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding overallCases(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Latest Update",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: kTextColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Last Updated 11 Sept 20 | 17:00 GMT + 8",
                      style: TextStyle(
                        color: kTextSecColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadiusDirectional.circular(16),
                  ),
                  child: Text(
                    "Details",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CaseCard(
                  icon: 'assets/icons/add.svg',
                  cases: 128,
                  title: 'New Cases',
                  color: Color(0xFFE46D27),
                ),
                CaseCard(
                  icon: 'assets/icons/heart.svg',
                  cases: 30,
                  title: 'Recovered',
                  color: Color(0xFFB4CD39),
                ),
                CaseCard(
                  icon: 'assets/icons/clear.svg',
                  cases: 3,
                  title: 'Death',
                  color: Color(0xFFED2329),
                ),
              ],
            )
          ],
        ));
  }
}
