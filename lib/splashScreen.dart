import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/main.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'package:shared_preferences/shared_preferences.dart';

String userUid;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future getUid() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    userUid = sharedPreferences.getString('uid');
  }

  @override
  void initState() {
    getUid().whenComplete(() {
      Timer(
        Duration(seconds: 3),
        () => Navigator.push(
          context,
          PageTransition(
              child: userUid == null ? Login() : MainPage(),
              type: PageTransitionType.rightToLeft),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.0,
              width: 400.0,
              child: Lottie.asset('assets/animation/tasty.json'),
            ),
            RichText(
              text: TextSpan(
                text: 'Eat ',
                style: TextStyle(
                    fontSize: 56.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'n ',
                    style: TextStyle(
                        fontSize: 56.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  TextSpan(
                    text: 'Repeat',
                    style: TextStyle(
                        fontSize: 56.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
