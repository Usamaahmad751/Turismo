import 'package:flutter/material.dart';

class ProfileHome extends StatefulWidget{
  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 260.0,
                width: double.infinity,
                color: Colors.lightBlue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Colors.red,
                          child: Text("Malik Tariq"),
                        ),
                        SizedBox(width: 30.0,),
                        Text("Malik Tariq Azam",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),)
                      ],
                    ),
                    SizedBox(height: 13.0,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 35.0),
                        RaisedButton(
                          onPressed: (){},
                          textColor: Colors.black,
                          color:Colors.white ,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text("Follow",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 20.0),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 17.0),
                        RaisedButton(
                          onPressed: (){},
                          textColor: Colors.black,
                          color:Colors.white ,
                          child: Container(
                            alignment: Alignment.center,
                            height: 20.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text("Likes 341",
                              style: TextStyle(
                                  fontSize: 16.0),),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        RaisedButton(
                          onPressed: (){},
                          textColor: Colors.black,
                          color:Colors.white ,
                          child: Container(
                            alignment: Alignment.center,
                            height: 20.0,
                            width: 104.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text("Followers 341",
                              style: TextStyle(
                                  fontSize: 16.0),),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        RaisedButton(
                          onPressed: (){},
                          textColor: Colors.black,
                          color:Colors.white ,
                          child: Container(
                            height: 20.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text("Blogs",
                              style: TextStyle(
                                  fontSize: 16.0),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
