import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/homeScreens/payment.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressPage extends StatefulWidget {
  String plan, category, validity, item, address;

  AddressPage(
      {this.plan, this.category, this.validity, this.item, this.address});

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String uid;
  int quantity = 1;
  int totalPrice = 1000;
  String timeSlot;
  DateTime startingDate = DateTime.now();
  List listItem = [
    '11:30 AM - 12:30 PM',
    '12:00 AM - 1:00 PM',
    '12:30 PM - 1:30 PM',
    '1:30 PM - 2:30 PM',
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: startingDate,
        firstDate: DateTime(2018, 8),
        lastDate: DateTime(2025));
    if (picked != null && picked != startingDate) {
      setState(() {
        startingDate = picked;
      });
    }
  }

  Future getUid() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    uid = sharedPreferences.getString('uid');
  }

  Future submitData(BuildContext context, dynamic data) async {
    return FirebaseFirestore.instance.collection('myOrders').doc(uid).set(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUid();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
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
        title: Text("Check Out"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Divider(),
            Container(
              height: 150.0,
              width: 300.0,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Plan Detail",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Colors.blueAccent,
                  ),
                  Text("Category : ${widget.category}",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  Text("Plan : ${widget.plan}",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  Text("Validity : ${widget.validity}",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  Text("Item : ${widget.item}",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 110.0,
              width: 300.0,
              constraints: BoxConstraints(maxHeight: 120, maxWidth: 360),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Colors.blueAccent,
                  ),
                  Text(
                    '${widget.address}',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
                width: 300,
                height: 200,
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Quantity : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (quantity != 1) quantity--;
                                  });
                                },
                                child: new Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(
                                            width: 2, color: Colors.amber)),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ),
                              ),
                              Text("${quantity}"),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                                child: new Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    margin: EdgeInsets.all(12),
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(
                                            width: 2, color: Colors.amber)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Start Date : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0)),
                          Row(
                            children: [
                              Text("${startingDate.toLocal()}".split(' ')[0],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.redAccent)),
                              SizedBox(
                                width: 10.0,
                              ),
                              IconButton(
                                  color: Colors.blueGrey,
                                  onPressed: () => _selectDate(context),
                                  icon: Icon(
                                    FontAwesomeIcons.calendar,
                                    color: Colors.amber,
                                  )),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Time Slot : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0)),
                          DropdownButton<String>(
                              hint: Text(
                                "Choose slot...",
                                style: TextStyle(fontSize: 16.0),
                              ),
                              value: timeSlot,
                              icon: Icon(
                                Icons.arrow_downward,
                                color: Colors.blueGrey,
                              ),
                              iconSize: 20,
                              elevation: 16,
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                              underline: Container(
                                height: 1,
                                color: Colors.blueAccent,
                              ),
                              items: listItem.map((val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Text(val),
                                );
                              }).toList(),
                              onChanged: (String val) {
                                setState(() {
                                  timeSlot = val;
                                });
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Price Detail : ",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.rupeeSign,
                                size: 16,
                              ),
                              Text(
                                '1000.00',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 20.0),
            Container(
              width: 300,
              height: 40,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onPressed: () {
                  if (!timeSlot.isEmpty) {
                    dynamic data = {
                      'category': widget.category,
                      'plan': widget.plan,
                      'validity': widget.validity,
                      'item': widget.item,
                      'address': widget.address,
                      'quantity': quantity,
                      'startDate': startingDate,
                      'timeSlot': timeSlot,
                      'price': totalPrice,
                    };
                    submitData(context, data).whenComplete(() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentPage())));
                  } else {
                    return showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          color: Colors.black45,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              'Select Time Slot!',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
                color: Colors.red,
                child: Text(
                  "Confirm Booking",
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
}
