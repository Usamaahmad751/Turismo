import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ServicesState();
  }
}

class ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Expanded(
            child: Container(
              width: 100.0,
              child: Card(
                  child: Center(
                child: Text("Places"),
              )),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            width: 100.0,
            child: Card(
                child: Center(
              child: Text("Medical Center"),
            )),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            width: 100.0,
            child: Card(
                child: Center(
              child: Text("General Store"),
            )),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            width: 100.0,
            child: Card(
                child: Center(
              child: Text("Gym"),
            )),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            width: 100.0,
            child: Card(
                child: Center(
              child: Text("Hotel"),
            )),
          ),
        ],
      ),
    );
  }
}
