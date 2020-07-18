import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'Home/home.dart';
import 'Places/Places.dart';
import 'Profile/profile.dart';
import 'Search/search.dart';
import 'Weather/weather-main.dart';

class Tourismo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TourismoState();
  }
}

class TourismoState extends State<Tourismo>{
  int _page=2;
  final position=[
    Places(),
    Search(),
    Home(),
    Weather(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: position[_page],
        bottomNavigationBar:FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Color.fromRGBO(36, 42, 78, 1),
            selectedItemBorderColor: Colors.transparent,
            selectedItemBackgroundColor: Colors.green,
            selectedItemIconColor: Colors.white,
            selectedItemLabelColor: Colors.teal,
            showSelectedItemShadow: true,
            barHeight: 60,
          ),
          selectedIndex: _page,
          onSelectTab: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.place,
              label: 'Map',
              selectedLabelColor: Colors.green
            ),
            FFNavigationBarItem(
              iconData: Icons.map,
              label: 'Story Map',
              selectedBackgroundColor: Colors.orange,
                selectedLabelColor: Colors.orange
            ),
            FFNavigationBarItem(
              iconData: Icons.home,
              label: 'Home',
              selectedBackgroundColor: Colors.purple,
                selectedLabelColor: Colors.purple
            ),
            FFNavigationBarItem(
              iconData: Icons.wb_sunny,
              label: 'Weather',
              selectedBackgroundColor: Colors.blue,
                selectedLabelColor: Colors.blue
            ),
            FFNavigationBarItem(
              iconData: Icons.person,
              label: 'Profile',
              selectedBackgroundColor: Colors.red,
                selectedLabelColor: Colors.red
            ),
          ],
        ),
    );
  }
}