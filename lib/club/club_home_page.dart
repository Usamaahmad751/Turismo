import 'package:flutter/material.dart';
import 'club_country_list.dart';

class ClubHomePage extends StatefulWidget {
  static const routeName='/Clubhome';
  @override
  _ClubHomePageState createState() => _ClubHomePageState();
}
class _ClubHomePageState extends State<ClubHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clubs")),
      body:ClubCountryList(),
    );
  }
}