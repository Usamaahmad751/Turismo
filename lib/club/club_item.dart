import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'club_detail.dart';
import 'club_model.dart';

class ClubItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countryId=ModalRoute.of(context).settings.arguments as String;
    final even=Provider.of<Club>(context,listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child:GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(ClubDetail.routeName,arguments: even.id);
          },
          child: Image.network(even.imageUrl,
            fit: BoxFit.cover,),),
        footer: GridTileBar(
          backgroundColor: Colors.black87.withOpacity(0.6),
          title: Text(even.title,textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
          ),
        ),
      ),
    );
  }
}
