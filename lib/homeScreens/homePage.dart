import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/homeScreens/combo.dart';
import 'package:flutter_app/homeScreens/nonVeg.dart';
import 'package:flutter_app/homeScreens/popular.dart';
import 'package:flutter_app/homeScreens/veg.dart';
import 'package:geocoder/geocoder.dart' as geoCo;
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentlocation = 'Current Location...';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  getCurrentLocation() async {
    var positionData = await GeolocatorPlatform.instance.getCurrentPosition();
    final cords =
        geoCo.Coordinates(positionData.latitude, positionData.longitude);
    var address =
        await geoCo.Geocoder.local.findAddressesFromCoordinates(cords);
    String mainAddress = address.first.addressLine;
    setState(() {
      currentlocation = mainAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber.shade100,
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 24.0, left: 8.0, right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 400.0,
                  constraints: BoxConstraints(maxWidth: 350.0, maxHeight: 80.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 5,
                          spreadRadius: 3,
                        )
                      ]),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${currentlocation}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: GestureDetector(
                        child: Image.asset(
                          "assets/images/popular.png",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PopularScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: GestureDetector(
                        child: Image.asset(
                          "assets/images/non-veg.png",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NonVegScreen(
                                address: currentlocation,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: GestureDetector(
                        child: Image.asset(
                          "assets/images/combo.png",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ComboScreen(
                                address: currentlocation,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: GestureDetector(
                        child: Image.asset(
                          "assets/images/veg.png",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VegScreen(address: currentlocation),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Image.asset("assets/images/offer.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
