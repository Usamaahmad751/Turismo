import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'club_country_model.dart';
import 'club_country_name.dart';
class ClubCountryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count=Provider.of<ClubCountryData>(context);
    final con=count.items;
    return ListView.builder(
        itemCount: con.length,
        itemBuilder: (context,i)=> ChangeNotifierProvider.value(
            value: con[i],
            child:ClubCountryName()
        ));
  }
}
