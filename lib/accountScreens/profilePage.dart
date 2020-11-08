import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade100,
        appBar: AppBar(
          backgroundColor: Colors.amber.shade600,
          title: Text("Profile"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Wallet"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Address"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wallet_giftcard,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Refer and Earn"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.timer,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Order Timings"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Meal Plans"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.verified_user_outlined,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Safety Measures"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Settings"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Contact Us"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Terms and Conditions"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.amber.shade600,
                        ),
                        title: Text("Cancellation Policy"),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Join as a Home Chef",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          onPressed: () {},
                          color: Colors.red,
                          child: Text(
                            "Learn More",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
