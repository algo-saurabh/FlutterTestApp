import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
          title: Text("Payment"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Choose your payment",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "method",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Card(
                elevation: 6.0,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: Radio(),
                      title: Text("Google Pay"),
                      trailing: Image.asset("assets/images/google-pay.png"),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ListTile(
                      leading: Radio(),
                      title: Text("Phone Pay"),
                      trailing: Image.asset("assets/images/google-pay.png"),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ListTile(
                      leading: Radio(),
                      title: Text("Paytm"),
                      trailing: Image.asset("assets/images/paytm.png"),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ListTile(
                      leading: Radio(),
                      title: Text("Cash On Delivery"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.0),
              Container(
                width: 250,
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  onPressed: () {},
                  color: Colors.red,
                  child: Text(
                    "Place Order",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
