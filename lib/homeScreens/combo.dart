import 'package:flutter/material.dart';

class ComboScreen extends StatefulWidget {
  @override
  _ComboScreenState createState() => _ComboScreenState();
}

class _ComboScreenState extends State<ComboScreen> {
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
        title: Text("Combo"),
      ),
      body: Text("Combo Item"),
    );
  }
}
