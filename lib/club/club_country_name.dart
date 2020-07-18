import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'club_country_data.dart';
import 'club_country_model.dart';
class ClubCountryName extends StatelessWidget {
  static const routeName='/ClubCountryName';
  @override
  Widget build(BuildContext context) {
    final count=Provider.of<ClubCountries>(context);
    return Card(
      margin: EdgeInsets.all(4.0),
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed(CountryClubName.routeName,arguments: count.id,);
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

