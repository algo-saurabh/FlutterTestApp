import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth extends ChangeNotifier {
  String uid;
  dynamic errorMessage = '';

  dynamic get getErrorMessaga => errorMessage;

  String get getUid => uid;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future signInWithGoogle() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      final GoogleSignInAccount googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      final User user = authResult.user;
      uid = user.uid;
      sharedPreferences.setString('uid', uid);
      notifyListeners();
    } catch (e) {
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'User not Found';
          print(errorMessage);
          break;
        case 'wrong-password':
          errorMessage = 'Oops, Wrong Password';
          print(errorMessage);
          break;
        case 'invalid-email':
          errorMessage = 'Sorry invalid Email';
          print(errorMessage);
          break;
      }
    }
  }

  Future<void> signOutGoogle() async {
    await googleSignIn.signOut();
    print("User Signed Out");
  }
}
