import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'club_country_model.dart';
import 'club_item.dart';
import 'club_model.dart';
class CountryClubName extends StatefulWidget {
  static const routeName='/ClubCountryData';
  @override
  _CountryClubNameState createState() => _CountryClubNameState();
}
class _CountryClubNameState extends State<CountryClubName> {
  @override
  Widget build(BuildContext context) {
    final countryId=ModalRoute.of(context).settings.arguments as String;
    final loadedProduct=Provider.of<ClubCountryData>(context).findById(countryId);
    final events=Provider.of<Clubs>(context).getCountry(loadedProduct.country);
    return Scaffold(
        appBar: AppBar(title: Text(loadedProduct.country),),
      body:GridView.builder(
        padding:const EdgeInsets.all(10.0),
        itemCount: events.length,
        itemBuilder: (context,i)=> ChangeNotifierProvider.value(
          value: events[i],
          child: ClubItem(
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3/2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 10.0,
        ),
      )
    );
  }
}
