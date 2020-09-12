import 'package:covid_19/constant/constant.dart';
import 'package:covid_19/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Malaysia Covid 19',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily: 'Yanone Kaffeesatz',
        scaffoldBackgroundColor: kBgColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
