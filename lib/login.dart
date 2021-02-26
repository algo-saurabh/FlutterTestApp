import 'package:flutter/material.dart';
import 'package:flutter_app/Services/authentication.dart';
import 'package:flutter_app/main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),
            _signInButton(),
          ],
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        Provider.of<Auth>(context, listen: false)
            .signInWithGoogle()
            .whenComplete(() {
          if (Provider.of<Auth>(context, listen: false).getErrorMessaga == '') {
            Navigator.pushReplacement(
              context,
              PageTransition(
                  child: MainPage(), type: PageTransitionType.rightToLeft),
            );
          }
          if (Provider.of<Auth>(context, listen: false).getErrorMessaga != '') {
            Navigator.pushReplacement(
              context,
              PageTransition(
                  child: Login(), type: PageTransitionType.rightToLeft),
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage("assets/images/google-logo.png"),
                height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
