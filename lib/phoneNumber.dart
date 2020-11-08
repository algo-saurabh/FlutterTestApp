import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneScreen extends StatefulWidget {
  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade600,
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "SKIP",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Start \nOrdering",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              elevation: 6.0,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 16.0, bottom: 20.0),
                child: TextField(
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.amber.shade600,
                      size: 24,
                    ),
                    hintText: "Your Mobile Phone",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Center(
              child: Container(
                width: 350,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  onPressed: () {},
                  color: Colors.red,
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
