import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'event_country_Data.dart';
import 'event_country_model.dart';
class EventCountryName extends StatelessWidget {
  static const routeName='/CountryName';
  @override
  Widget build(BuildContext context) {
    final count=Provider.of<Countries>(context);
    return Card(
      margin: EdgeInsets.all(4.0),
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed(CountryEventsName.routeName,arguments: count.id);
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(count.imageUrl,),
        ),
        title: Text(count.country,style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,
        ),),
        trailing: Icon(Icons.arrow_right,size: 40,),
      ),
    );
  }
}

