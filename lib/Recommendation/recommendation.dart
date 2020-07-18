import 'package:flutter/material.dart';

import 'list.dart';
class Recommendation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RecommendationState();
  }
}
class RecommendationState extends State<Recommendation>{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 340.0,
            child: GridTile(
              child:GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(RecomDetail.routeName,arguments: "1");
                },
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQC13Qv7C6HeT2B1d52F8HE_T0zOQeVxkIf7g&usqp=CAU",
                  fit: BoxFit.cover,),),
              footer: GridTileBar(
                backgroundColor: Colors.black87.withOpacity(0.6),
                title: Text("Naran-Kagan-Pakistan",textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 330.0,
            child: GridTile(
              child:GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(RecomDetail.routeName,arguments: "2");
                },
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRz2lXVHG-Dyd9hCEQvSeQupSQt3pbkf-IJ6Q&usqp=CAU",
                  fit: BoxFit.cover,),),
              footer: GridTileBar(
                backgroundColor: Colors.black87.withOpacity(0.6),
                title: Text("The British Museum England",textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 330.0,
            child: GridTile(
              child:GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(RecomDetail.routeName,arguments: "3");
                },
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSN0i_xb-biG2b3sOaxBMy6pL8u0BYrkiA5Ow&usqp=CAU",
                  fit: BoxFit.cover,),),
              footer: GridTileBar(
                backgroundColor: Colors.black87.withOpacity(0.6),
                title: Text("Zürich-Switzerland",textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 330.0,
            child: GridTile(
              child:GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(RecomDetail.routeName,arguments: "4");
                },
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQ9V3QDFl-_Xr88xjNBsGFyl0JrtxQVXWUjA&usqp=CAU",
                  fit: BoxFit.cover,),),
              footer: GridTileBar(
                backgroundColor: Colors.black87.withOpacity(0.6),
                title: Text("İstanbul-Turkey",textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 330.0,
            child: GridTile(
              child:GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(RecomDetail.routeName,arguments: "5");
                },
                child: Image.network("https://www.tripsavvy.com/thmb/kN3PyHPETDQloqQkQ1p-y6_0f9s=/1000x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/downtown-at-sunset-seen-from-lake-echo-park-536175737-57acec025f9b58b5c216611d.jpg",
                  fit: BoxFit.cover,),),
              footer: GridTileBar(
                backgroundColor: Colors.black87.withOpacity(0.6),
                title: Text("Echo Park Lake USA",textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}