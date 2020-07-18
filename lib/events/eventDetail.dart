import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourismo_fyp/events/EvenstList.dart';

class EventDetail extends StatefulWidget {
  static const routeName='/event-detail';

  @override
  _EventDetailState createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  String firstHalf;

  String secondHalf;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    final eventId=ModalRoute.of(context).settings.arguments as String;
    final eve=Provider.of<EventsLists>(context).findById(eventId);
    if (eve.description.length > 50) {
      firstHalf = eve.description.substring(0, 250);
      secondHalf = eve.description.substring(50, eve.description.length);
    } else {
      firstHalf = eve.description;
      secondHalf = "";
    }
    return Scaffold(
      appBar: AppBar(title: Text(eve.eventName),),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 220,
            child:  ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                child: Image.network(eve.imageUrl1,fit: BoxFit.fill,height:280,width: double.infinity ,)),
          ),

          Padding(
            padding: EdgeInsets.only(top: 221.0),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:3,left: 15,right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      child: Container(
                          height: 95,
                          color: Color.fromRGBO(55, 70, 105, 1),
                          child:  Row(
                            children: <Widget>[
                              Container(
                                height: 95,
                                width: 70,
                                color:Color.fromRGBO(95, 115, 150, 1),
                                child: Icon(Icons.place,color: Colors.white,size: 60,) ,
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          Text("Country :",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                          SizedBox(width: 7,),
                                          Text(eve.country,
                                            style: TextStyle(color: Colors.white,fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          Text("Location :",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                          SizedBox(width: 7,),
                                          Text(eve.location,
                                            style: TextStyle(color: Colors.white,fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:3,left: 15,right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      child: Container(
                          height: 95,
                          color: Color.fromRGBO(55, 70, 105, 1),
                          child:  Row(
                            children: <Widget>[
                              Container(
                                height: 95,
                                width: 70,
                                color:Color.fromRGBO(95, 115, 150, 1),
                                child: Icon(Icons.date_range,color: Colors.white,size: 60,) ,
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          Text("Event-Date :",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                          SizedBox(width: 7,),
                                          Text(eve.day,
                                            style: TextStyle(color: Colors.white,fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom:15.0,top: 8,left: 15,right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      color: Color.fromRGBO(55, 70, 105, 1),
                      child: Column(
                        children: <Widget>[
                          Container(
                              color:Color.fromRGBO(95, 115, 150, 1),
                              height: 30,width: double.infinity,
                              child: Center(
                                child: Text("Description",style: TextStyle(
                                    fontSize: 20,fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                              )
                          ),
                          SizedBox(height: 1,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                            color: Color.fromRGBO(55, 70, 105, 1),
                            child: secondHalf.isEmpty
                                ? new Text(firstHalf)
                                : new Column(
                              children: <Widget>[
                                new Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                                  style: TextStyle(color: Colors.white,fontSize: 15),),
                                new InkWell(
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Text(
                                        flag ? "show more" : "show less",
                                        style: new TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    setState(() {
                                      flag = !flag;
                                    });
                                  },
                                ),
                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}