import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'EvenstList.dart';
import 'event_country_model.dart';
import 'eventsItems.dart';
class CountryEventsName extends StatefulWidget {
  static const routeName='/CountryData';
  @override
  _CountryEventsNameState createState() => _CountryEventsNameState();
}
class _CountryEventsNameState extends State<CountryEventsName> {
  @override
  Widget build(BuildContext context) {
    final countryId=ModalRoute.of(context).settings.arguments as String;
    final loadedProduct=Provider.of<EventCountryData>(context).findById(countryId);
    final events=Provider.of<EventsLists>(context).getCountry(loadedProduct.country);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.country),),
      body: GridView.builder(
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
