import 'package:covid_19/constant/constant.dart';
import 'package:covid_19/home/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text("#KitaJagaKita"),
      elevation: 0,
      actions: [
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset('assets/icons/notification.svg', height: 20),
        ),
      ],
    );
  }
}