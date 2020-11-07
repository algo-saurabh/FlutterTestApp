import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'file:///D:/project/flutter_app/lib/homeScreens/combo.dart';
import 'file:///D:/project/flutter_app/lib/homeScreens/nonVeg.dart';
import 'file:///D:/project/flutter_app/lib/homeScreens/popular.dart';
import 'file:///D:/project/flutter_app/lib/homeScreens/veg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 24.0, left: 8.0, right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 360,
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.0,right: 12.0),
                    child: Material(
                      elevation: 6.0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: TextField(
                        style: TextStyle(fontSize: 16.0),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.location_on,
                            color: Colors.amber.shade600,
                            size: 24,
                          ),
                          border: InputBorder.none,
                          hintText: "Choose location",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        "assets/images/popular.png",
                        width: 170,
                        height: 170,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PopularScreen()));
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        "assets/images/non-veg.png",
                        width: 170,
                        height: 170,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NonVegScreen()));
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        "assets/images/combo.png",
                        width: 170,
                        height: 170,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComboScreen()));
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        "assets/images/veg.png",
                        width: 170,
                        height: 170,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => VegScreen()));
                      },
                    ),
                  ],
                ),
                Image.asset("assets/images/offer.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
