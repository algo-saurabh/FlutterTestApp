import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

class NonVegScreen extends StatefulWidget {
  @override
  _NonVegScreenState createState() => _NonVegScreenState();
}

class _NonVegScreenState extends State<NonVegScreen> {
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
        title: Text("NonVeg"),
      ),
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: ListView(
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
                      height: 140.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                      )),
                    ),
                  ),
                  ExpansionTile(
                    title: Text('Mini Combo'),
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Plain Rice"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          ),
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Fry Rice"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Gravy"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          ),
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Gravy"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          )
                        ],
                      ),
                      ListTileMoreCustomizable(
                        title: Text("Salad"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title: Text("5 Meals(10 days validity) Rs575 - 19%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title:
                            Text("20 Meals(30 days validity) Rs2000 - 24%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title: Text("1 Meals(1 days validity) Rs100 - 10%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        trailing: DottedBorder(
                          color: Colors.black,
                          strokeWidth: 1,
                          child: Text(
                              "From Rs100 per meal!\nFor 20 meal subscription"),
                        ),
                        leading: RaisedButton(
                          onPressed: () {},
                          color: Colors.red,
                          child: Text("Buy"),
                          textColor: Colors.white,
                        ),
                        horizontalTitleGap: 0.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 6.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                      )),
                    ),
                  ),
                  ExpansionTile(
                    title: Text('Classic Plan'),
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Plain Rice"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          ),
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Fry Rice"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Gravy"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          ),
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Gravy"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          )
                        ],
                      ),
                      ListTileMoreCustomizable(
                        title: Text("Salad"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title: Text("5 Meals(10 days validity) Rs575 - 19%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title:
                            Text("20 Meals(30 days validity) Rs2000 - 24%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title: Text("1 Meals(1 days validity) Rs100 - 10%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        trailing: DottedBorder(
                          color: Colors.black,
                          strokeWidth: 1,
                          child: Text(
                              "From Rs100 per meal!\nFor 20 meal subscription"),
                        ),
                        leading: RaisedButton(
                          onPressed: () {},
                          color: Colors.red,
                          child: Text("Buy"),
                          textColor: Colors.white,
                        ),
                        horizontalTitleGap: 0.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              elevation: 6.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                      )),
                    ),
                  ),
                  ExpansionTile(
                    title: Text('Deluxe Plan'),
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Plain Rice"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          ),
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Fry Rice"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Gravy"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          ),
                          Expanded(
                            child: ListTileMoreCustomizable(
                              title: new Text("Gravy"),
                              leading: Radio(),
                              horizontalTitleGap: 0.0,
                            ),
                          )
                        ],
                      ),
                      ListTileMoreCustomizable(
                        title: Text("Salad"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title: Text("5 Meals(10 days validity) Rs575 - 19%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title:
                            Text("20 Meals(30 days validity) Rs2000 - 24%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        title: Text("1 Meals(1 days validity) Rs100 - 10%Off"),
                        leading: Radio(),
                        horizontalTitleGap: 0.0,
                      ),
                      ListTileMoreCustomizable(
                        trailing: DottedBorder(
                          color: Colors.black,
                          strokeWidth: 1,
                          child: Text(
                              "From Rs100 per meal!\nFor 20 meal subscription"),
                        ),
                        leading: RaisedButton(
                          onPressed: () {},
                          color: Colors.red,
                          child: Text("Buy"),
                          textColor: Colors.white,
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
    );
  }
}
