import 'package:flutter/material.dart';
import 'package:tourismo_fyp/Places/Places.dart';
import 'package:tourismo_fyp/Recommendation/recommendation.dart';
import 'package:tourismo_fyp/Services/Gyms.dart';
import 'package:tourismo_fyp/Services/cafeteria.dart';
import 'package:tourismo_fyp/Services/fastfood.dart';
import 'package:tourismo_fyp/Services/generalStore.dart';
import 'package:tourismo_fyp/Services/hospitals.dart';
import 'package:tourismo_fyp/Services/hotels.dart';
import 'package:tourismo_fyp/Services/pharmacies.dart';
import 'package:tourismo_fyp/Services/place.dart';
import 'package:tourismo_fyp/Services/resturant.dart';
import 'package:tourismo_fyp/club/club_home_page.dart';
import 'package:tourismo_fyp/events/home.dart';



class ButtonState extends StatefulWidget {
  @override
  _ButtonStateState createState() => _ButtonStateState();
}

class _ButtonStateState extends State<ButtonState>{

  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [BoxShadow(color:Colors.grey,blurRadius: 50)]
            ),
            margin:EdgeInsets.all(10) ,
            padding: EdgeInsets.all(10),
            height: 75,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Places()),
                        );
                        print("places select");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.place,size: 35,color: Colors.lightBlue,),
                          _button("Places"),
                        ],
                      )
                  ),
                ),
                SizedBox(
                  width: 2.0,
                  child: Center(
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: .0, end: 1.0),
                      height: 50.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(EventHomePage.routeName);
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.event,size: 35,color: Colors.lightBlue,),
                        _button("Events")
                      ],
                    )
                ),
                ),
                SizedBox(
                  width: 2.0,
                  child: Center(
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: .0, end: 1.0),
                      height: 50.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(ClubHomePage.routeName);
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.people,size: 35,color: Colors.lightBlue,),
                        _button("Clubs"),
                      ],
                    )
                ),
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5,left: 8),
            child: Text("Services",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [BoxShadow(color:Colors.grey,blurRadius: 50)]
            ),
            margin:EdgeInsets.all(10) ,
            padding: EdgeInsets.all(10),
            height: 210,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                            onTap: (){

                     Navigator.push(
                              context,
                                   MaterialPageRoute(builder: (context) => Place()),);
                              print("places select");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top:10.0),
                                  child: Icon(Icons.place,size: 25,color: Colors.lightBlue,),
                                ),
                                _button1("Places"),
                              ],
                            )
                        ),
                      ),
                      _sizeBoxVertical(),
                      Expanded(child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => hotels()),
                            );
                            print("hotels select");
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top:10.0),
                                child: Icon(Icons.hotel,size: 25,color: Colors.lightBlue,),
                              ),
                              _button1("Hotels")
                            ],
                          )
                      ),
                      ),
                      _sizeBoxVertical(),
                      Expanded(child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  GeneralStore()),
                            );
                            print("general select");
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top:10.0),
                                child: Icon(Icons.shop,size: 25,color: Colors.lightBlue,),
                              ),
                              _button1("General Store"),
                            ],
                          )
                      ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Cafeteria()),
                              );
                              print("cafetria select");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top:10.0),
                                  child: Icon(Icons.free_breakfast,size: 25,color: Colors.lightBlue,),
                                ),
                                _button1("Cafetreia"),
                              ],
                            )
                        ),
                      ),
                      _sizeBoxVertical(),
                      Expanded(child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FastFood()),
                            );
                            print("fast food select");
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top:10.0),
                                child: Icon(Icons.fastfood,size: 25,color: Colors.lightBlue,),
                              ),
                              _button1("FastFood")
                            ],
                          )
                      ),
                      ),
                      _sizeBoxVertical(),
                      Expanded(child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Resturant()),
                            );
                            print("Resturant select");
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top:10.0),
                                child: Icon(Icons.restaurant,size: 25,color: Colors.lightBlue,),
                              ),
                              _button1("Resturants"),
                            ],
                          )
                      ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => hospitals()),);
                              print("hospital select");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top:10.0),
                                  child: Icon(Icons.local_hospital,size: 25,color: Colors.lightBlue,),
                                ),
                                _button1("Hospital"),
                              ],
                            )
                        ),
                      ),
                      _sizeBoxVertical(),
                      Expanded(child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Gyms()),);
                            print("gym select");
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top:10.0),
                                child: Icon(Icons.fitness_center,size: 25,color: Colors.lightBlue,),
                              ),
                              _button1("Gyms")
                            ],
                          )
                      ),
                      ),
                      _sizeBoxVertical(),
                      Expanded(child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>pharmacies()),
                            );
                            print("Medical select");
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top:10.0),
                                child: Icon(Icons.store,size: 25,color: Colors.lightBlue,),
                              ),
                              _button1("Medical Store"),
                            ],
                          )
                      ),
                      ),

                    ],
                  ),
                ),

              ],
            ),

          ),
          Padding(
            padding: EdgeInsets.only(top: 5,left: 8),
            child: Text("Recomendation",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [BoxShadow(color:Colors.grey,blurRadius: 50)]
              ),
              margin:EdgeInsets.only(top:10,bottom: 10) ,
              padding: EdgeInsets.only(top:10,bottom: 10,right: 5,left: 5),
              height: 270,
              width: double.infinity,
              child: Recommendation(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5,left: 8),
            child: Text("Story Maps",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [BoxShadow(color:Colors.grey,blurRadius: 50)]
              ),
              margin:EdgeInsets.only(top:10,bottom: 10) ,
              padding: EdgeInsets.only(top:10,bottom: 10,right: 5,left: 5),
              height: 270,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int i) =>
                    GestureDetector(
                      onTap: (){
                        print("card selected");
                      },
                      child: Card(
                        elevation: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 340.0,
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(child:Image.network('https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',fit: BoxFit.cover,) ),
                            ],
                          ),
                        ),
                      ),
                    ),
              )
          ),
        ],

    );
  }
  Widget _button(String name){
    return Text(name,textAlign: TextAlign.center,style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 17,
    ),);
  }
  Widget _button1(String name){
    return  Text(name,textAlign: TextAlign.center,style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    );
  }
  Widget _sizeBoxVertical(){
    return SizedBox(
      width: 2.0,
      child: Center(
        child: Container(
          margin: EdgeInsetsDirectional.only(start: .0, end: 1.0),
          height: 35.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
