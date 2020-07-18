import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourismo_fyp/events/event_country_model.dart';

import 'Event_country_name.dart';
class EventCountryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count=Provider.of<EventCountryData>(context);
    final con=count.items;
    return ListView.builder(
        itemCount: con.length,
        itemBuilder: (context,i)=> ChangeNotifierProvider.value(
            value: con[i],
            child:EventCountryName()
        ));
  }
}
