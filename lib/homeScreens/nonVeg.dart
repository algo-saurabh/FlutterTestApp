import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

import 'address.dart';

class NonVegScreen extends StatefulWidget {
  String address;

  NonVegScreen({this.address});

  @override
  _NonVegScreenState createState() => _NonVegScreenState();
}

class _NonVegScreenState extends State<NonVegScreen> {
  String itemSelected = 'Rice';
  int idItem = 1;
  String packSelected = '1 day';
  int idPack = 1;

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
        title: Text("Non-Veg"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 6.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                          ),
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mini Plan',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber.shade600),
                          ),
                          Text(
                            'Non-Veg gravy, Papad with Rice/Bread & Roti',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      children: [
                        ListView(
                          shrinkWrap: true,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ListTileMoreCustomizable(
                                    title: new Text(
                                      "Rice",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                    leading: Radio(
                                      value: 1,
                                      groupValue: idItem,
                                      onChanged: (val) {
                                        setState(() {
                                          itemSelected = "Rice";
                                          idItem = 1;
                                        });
                                      },
                                    ),
                                    horizontalTitleGap: 0.0,
                                  ),
                                ),
                                Expanded(
                                  child: ListTileMoreCustomizable(
                                    title: new Text(
                                      "Bread",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                    leading: Radio(
                                      value: 2,
                                      groupValue: idItem,
                                      onChanged: (val) {
                                        setState(() {
                                          itemSelected = "Bread";
                                          idItem = 2;
                                        });
                                      },
                                    ),
                                    horizontalTitleGap: 0.0,
                                  ),
                                )
                              ],
                            ),
                            ListTileMoreCustomizable(
                              title: Text(
                                "1 Meals(1 days validity) Rs100 - 10% Off",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              leading: Radio(
                                value: 1,
                                groupValue: idPack,
                                onChanged: (val) {
                                  setState(() {
                                    packSelected = "1 day";
                                    idPack = 1;
                                  });
                                },
                              ),
                              horizontalTitleGap: 0.0,
                            ),
                            ListTileMoreCustomizable(
                              title: Text(
                                "5 Meals(10 days validity) Rs575 - 19%Off",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              leading: Radio(
                                value: 2,
                                groupValue: idPack,
                                onChanged: (val) {
                                  setState(() {
                                    packSelected = "5 day";
                                    idPack = 2;
                                  });
                                },
                              ),
                              horizontalTitleGap: 0.0,
                            ),
                            ListTileMoreCustomizable(
                              title: Text(
                                "15 Meals(20 days validity) Rs1000 - 22%Off",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              leading: Radio(
                                value: 3,
                                groupValue: idPack,
                                onChanged: (val) {
                                  setState(() {
                                    packSelected = "15 day";
                                    idPack = 3;
                                  });
                                },
                              ),
                              horizontalTitleGap: 0.0,
                            ),
                            ListTileMoreCustomizable(
                              title: Text(
                                "20 Meals(30 days validity) Rs2000 - 24%Off",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              leading: Radio(
                                value: 4,
                                groupValue: idPack,
                                onChanged: (val) {
                                  setState(() {
                                    packSelected = "20 day";
                                    idPack = 4;
                                  });
                                },
                              ),
                              horizontalTitleGap: 0.0,
                            ),
                          ],
                        ),
                        ListTileMoreCustomizable(
                          trailing: DottedBorder(
                            color: Colors.black,
                            strokeWidth: 1,
                            child: Text(
                              "From Rs100 per meal!\nFor 20 meal subscription",
                              style: TextStyle(fontSize: 8.0),
                            ),
                          ),
                          leading: Container(
                            constraints: BoxConstraints(maxWidth: 200.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 70,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => AddressPage(
                                                    address: widget.address,
                                                    plan: 'Mini',
                                                    category: 'Non Veg',
                                                    validity: packSelected,
                                                    item: itemSelected,
                                                  )));
                                    },
                                    color: Colors.red,
                                    child: Text("Buy"),
                                    textColor: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 70,
                                  child: RaisedButton(
                                    onPressed: () {
                                      _miniPlanChart();
                                    },
                                    child: Text(
                                      "Menu",
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                elevation: 6.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                        )),
                      ),
                    ),
                    ExpansionTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Classic Plan',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber.shade600),
                          ),
                          Text(
                            'Rice & chawal/Bread & Roti, Dry Non-Veg, Non-veg Gravy, Salad, Papad',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTileMoreCustomizable(
                                title: new Text(
                                  "Rice",
                                  style: TextStyle(fontSize: 14.0),
                                ),
                                leading: Radio(
                                  value: 1,
                                  groupValue: idItem,
                                  onChanged: (val) {
                                    setState(() {
                                      itemSelected = "Rice";
                                      idItem = 1;
                                    });
                                  },
                                ),
                                horizontalTitleGap: 0.0,
                              ),
                            ),
                            Expanded(
                              child: ListTileMoreCustomizable(
                                title: new Text(
                                  "Bread",
                                  style: TextStyle(fontSize: 14.0),
                                ),
                                leading: Radio(
                                  value: 2,
                                  groupValue: idItem,
                                  onChanged: (val) {
                                    setState(() {
                                      itemSelected = "Bread";
                                      idItem = 2;
                                    });
                                  },
                                ),
                                horizontalTitleGap: 0.0,
                              ),
                            )
                          ],
                        ),
                        ListTileMoreCustomizable(
                          title: Text(
                            "1 Meals(1 days validity) Rs100 - 10% Off",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Radio(
                            value: 1,
                            groupValue: idPack,
                            onChanged: (val) {
                              setState(() {
                                packSelected = "1 day";
                                idPack = 1;
                              });
                            },
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                        ListTileMoreCustomizable(
                          title: Text(
                            "5 Meals(10 days validity) Rs575 - 19%Off",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Radio(
                            value: 2,
                            groupValue: idPack,
                            onChanged: (val) {
                              setState(() {
                                packSelected = "5 day";
                                idPack = 2;
                              });
                            },
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                        ListTileMoreCustomizable(
                          title: Text(
                            "15 Meals(20 days validity) Rs1000 - 22%Off",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Radio(
                            value: 3,
                            groupValue: idPack,
                            onChanged: (val) {
                              setState(() {
                                packSelected = "15 day";
                                idPack = 3;
                              });
                            },
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                        ListTileMoreCustomizable(
                          title: Text(
                            "20 Meals(30 days validity) Rs2000 - 24%Off",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Radio(
                            value: 4,
                            groupValue: idPack,
                            onChanged: (val) {
                              setState(() {
                                packSelected = "20 day";
                                idPack = 4;
                              });
                            },
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                        ListTileMoreCustomizable(
                          trailing: DottedBorder(
                            color: Colors.black,
                            strokeWidth: 1,
                            child: Text(
                              "From Rs100 per meal!\nFor 20 meal subscription",
                              style: TextStyle(fontSize: 8.0),
                            ),
                          ),
                          leading: Container(
                            constraints: BoxConstraints(maxWidth: 200.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AddressPage(
                                            address: widget.address,
                                            plan: 'Classic',
                                            category: 'Non Veg',
                                            validity: packSelected,
                                            item: itemSelected,
                                          ),
                                        ),
                                      );
                                    },
                                    color: Colors.red,
                                    child: Text("Buy"),
                                    textColor: Colors.white,
                                  ),
                                  height: 30,
                                  width: 70,
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 70,
                                  child: RaisedButton(
                                    onPressed: () {
                                      _classicPlanChart();
                                    },
                                    child: Text(
                                      "Menu",
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                elevation: 6.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                        )),
                      ),
                    ),
                    ExpansionTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deluxe Plan',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber.shade600),
                          ),
                          Text(
                            'Rice, Bread & Roti, Dry Non-Veg, Gravy Non-veg, Salad, sweets & dessert, Papad',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      children: [
                        ListTileMoreCustomizable(
                          title: Text(
                            "1 Meals(1 days validity) Rs100 - 10% Off",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Radio(
                            value: 1,
                            groupValue: idPack,
                            onChanged: (val) {
                              setState(() {
                                packSelected = "1 day";
                                idPack = 1;
                              });
                            },
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                        ListTileMoreCustomizable(
                          title: Text(
                            "5 Meals(10 days validity) Rs575 - 19%Off",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Radio(
                            value: 2,
                            groupValue: idPack,
                            onChanged: (val) {
                              setState(() {
                                packSelected = "5 day";
                                idPack = 2;
                              });
                            },
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                        ListTileMoreCustomizable(
                          title: Text(
                            "15 Meals(20 days validity) Rs1000 - 22%Off",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Radio(
                            value: 3,
                            groupValue: idPack,
                            onChanged: (val) {
                              setState(() {
                                packSelected = "15 day";
                                idPack = 3;
                              });
                            },
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                        ListTileMoreCustomizable(
                          title: Text(
                            "20 Meals(30 days validity) Rs2000 - 24%Off",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Radio(
                            value: 4,
                            groupValue: idPack,
                            onChanged: (val) {
                              setState(() {
                                packSelected = "20 day";
                                idPack = 4;
                              });
                            },
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                        ListTileMoreCustomizable(
                          trailing: DottedBorder(
                            color: Colors.black,
                            strokeWidth: 1,
                            child: Text(
                              "From Rs100 per meal!\nFor 20 meal subscription",
                              style: TextStyle(fontSize: 8.0),
                            ),
                          ),
                          leading: Container(
                            constraints: BoxConstraints(maxWidth: 200.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => AddressPage(
                                                    address: widget.address,
                                                    plan: 'Deluxe',
                                                    category: 'Non Veg',
                                                    validity: packSelected,
                                                    item: 'Deluxe items',
                                                  )));
                                    },
                                    color: Colors.red,
                                    child: Text("Buy"),
                                    textColor: Colors.white,
                                  ),
                                  height: 30,
                                  width: 70,
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 70,
                                  child: RaisedButton(
                                    onPressed: () {
                                      _deluxePlanChart();
                                    },
                                    child: Text(
                                      "Menu",
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          horizontalTitleGap: 0.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _miniPlanChart() async {
    DocumentSnapshot document =
        await FirebaseFirestore.instance.collection('nonVeg').doc('mini').get();
    List<String> bread = List.from(document['bread']);
    List<String> rice = List.from(document['rice']);
    List<String> vegGravy = List.from(document['nonVegGravy']);
    String breadItems = "", riceItems = "", vegItems = "";
    for (int i = 0; i < bread.length - 1; i++) {
      breadItems += bread[i];
      breadItems += ", ";
    }
    breadItems += bread[bread.length - 1];
    for (int i = 0; i < rice.length - 1; i++) {
      riceItems += rice[i];
      riceItems += ", ";
    }
    riceItems += rice[rice.length - 1];
    for (int i = 0; i < vegGravy.length - 1; i++) {
      vegItems += vegGravy[i];
      vegItems += ", ";
    }
    vegItems += vegGravy[vegGravy.length - 1];
    print('bread: ${bread}');
    print('rice: ${rice}');
    print('vegGravy: ${vegGravy}');
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(20.0),
          title: Center(
              child: Text(
            'Mini Plan Chart',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          )),
          children: [
            Text(
              'Non Veg Gravy: (120 gm)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${vegItems}'),
            Text(
              'Rice: (250 gm)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${riceItems}'),
            Text(
              'Bread: (4 Pieces)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${breadItems}'),
          ],
        );
      },
    );
  }

  Future<void> _classicPlanChart() async {
    DocumentSnapshot document = await FirebaseFirestore.instance
        .collection('nonVeg')
        .doc('classic')
        .get();
    List<String> bread = List.from(document['bread']);
    List<String> rice = List.from(document['rice']);
    List<String> vegGravy = List.from(document['nonVegGravy']);
    List<String> vegDry = List.from(document['nonVegDry']);

    String breadItems = "",
        riceItems = "",
        vegGravyItems = "",
        vegDryItems = "";
    for (int i = 0; i < bread.length - 1; i++) {
      breadItems += bread[i];
      breadItems += ", ";
    }
    breadItems += bread[bread.length - 1];
    for (int i = 0; i < rice.length - 1; i++) {
      riceItems += rice[i];
      riceItems += ", ";
    }
    riceItems += rice[rice.length - 1];
    for (int i = 0; i < vegGravy.length - 1; i++) {
      vegGravyItems += vegGravy[i];
      vegGravyItems += ", ";
    }
    vegGravyItems += vegGravy[vegGravy.length - 1];

    for (int i = 0; i < vegDry.length - 1; i++) {
      vegDryItems += vegDry[i];
      vegDryItems += ", ";
    }
    vegDryItems += vegDry[vegDry.length - 1];

/*    print('bread: ${bread}');
    print('rice: ${rice}');
    print('vegGravy: ${vegGravy}');*/

    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(20.0),
          title: Center(
              child: Text(
            'Classic Plan Chart',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          )),
          children: [
            Text(
              'Non Veg Gravy: (120 gm)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${vegGravyItems}'),
            Text(
              'Non Veg Dry: (50 gm)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${vegDryItems}'),
            Text(
              'Rice: (250 gm)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${riceItems}'),
            Text(
              'Bread: (4 Pieces)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${breadItems}'),
          ],
        );
      },
    );
  }

  Future<void> _deluxePlanChart() async {
    DocumentSnapshot document = await FirebaseFirestore.instance
        .collection('nonVeg')
        .doc('deluxe')
        .get();
    List<String> bread = List.from(document['bread']);
    List<String> rice = List.from(document['rice']);
    List<String> vegGravy = List.from(document['nonVegGravy']);
    List<String> vegDry = List.from(document['nonVegDry']);

    String breadItems = "",
        riceItems = "",
        vegGravyItems = "",
        vegDryItems = "";
    for (int i = 0; i < bread.length - 1; i++) {
      breadItems += bread[i];
      breadItems += ", ";
    }
    breadItems += bread[bread.length - 1];
    for (int i = 0; i < rice.length - 1; i++) {
      riceItems += rice[i];
      riceItems += ", ";
    }
    riceItems += rice[rice.length - 1];
    for (int i = 0; i < vegGravy.length - 1; i++) {
      vegGravyItems += vegGravy[i];
      vegGravyItems += ", ";
    }
    vegGravyItems += vegGravy[vegGravy.length - 1];

    for (int i = 0; i < vegDry.length - 1; i++) {
      vegDryItems += vegDry[i];
      vegDryItems += ", ";
    }
    vegDryItems += vegDry[vegDry.length - 1];

/*    print('bread: ${bread}');
    print('rice: ${rice}');
    print('vegGravy: ${vegGravy}');*/

    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(20.0),
          title: Center(
              child: Text(
            'Deluxe Plan Chart',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          )),
          children: [
            Text(
              'Non-Veg Gravy: (120 gm)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${vegGravyItems}'),
            Text(
              'Non-Veg Dry: (50 gm)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${vegDryItems}'),
            Text(
              'Rice: (250 gm)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${riceItems}'),
            Text(
              'Bread: (4 Pieces)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text('${breadItems}'),
          ],
        );
      },
    );
  }
}
