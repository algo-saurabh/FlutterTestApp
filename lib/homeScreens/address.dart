import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/homeScreens/payment.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade600,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Delivery Address Fillout"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Text(
              "Delivery Address",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                child: TextField(
                  minLines: 3,
                  maxLines: 8,
                  autocorrect: false,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Container(
              width: 250,
              height: 40,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onPressed: () {
                  _showMyDialog();
                },
                color: Colors.red,
                child: Text(
                  "Choose Time Slot",
                  style: TextStyle(fontSize: 20.0),
                ),
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: 250,
              height: 40,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentPage()));
                },
                color: Colors.red,
                child: Text(
                  "Confirm",
                  style: TextStyle(fontSize: 20.0),
                ),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Order For')),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 34.0),
                  child: Row(
                    children: [
                      Text("Qty"),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: new Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.all(12),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border:
                                    Border.all(width: 2, color: Colors.amber)),
                            child: Icon(
                              Icons.remove,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                      Text("1"),
                      GestureDetector(
                        onTap: () {},
                        child: new Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.all(12),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border:
                                    Border.all(width: 2, color: Colors.amber)),
                            child: Icon(
                              Icons.add,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTileMoreCustomizable(
                  title: new Text("11:30 AM - 12:30 PM"),
                  leading: Radio(),
                  horizontalTitleGap: 0.0,
                ),
                ListTileMoreCustomizable(
                  title: new Text("12:00 AM - 1:00 PM"),
                  leading: Radio(),
                  horizontalTitleGap: 0.0,
                ),
                ListTileMoreCustomizable(
                  title: new Text("12:30 PM - 1:30 PM"),
                  leading: Radio(),
                  horizontalTitleGap: 0.0,
                ),
                ListTileMoreCustomizable(
                  title: new Text("1:30 PM - 2:30 PM"),
                  leading: Radio(),
                  horizontalTitleGap: 0.0,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              child: Text('Confirm'),
              color: Colors.amber,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
