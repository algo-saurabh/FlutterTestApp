import 'package:flutter/material.dart';
import 'package:flutter_app/accountScreens/profilePage.dart';
import 'package:flutter_app/homeScreens/address.dart';
import 'package:flutter_app/homeScreens/nonVeg.dart';
import 'package:flutter_app/homeScreens/veg.dart';
import 'package:flutter_app/phoneNumber.dart';

import 'main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}