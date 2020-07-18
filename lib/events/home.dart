import 'package:flutter/material.dart';
import 'event_country_list.dart';
class EventHomePage extends StatefulWidget {
  static const routeName='/eventhome';
  @override
  _EventHomePageState createState() => _EventHomePageState();
}
class _EventHomePageState extends State<EventHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events")),
      body:EventCountryList(),
    );
  }
}