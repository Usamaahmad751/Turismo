import 'package:flutter/material.dart';
class BlogPost extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BlogPostState();
  }
}
class BlogPostState extends State<BlogPost>{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image.asset("images/silver.jpg"),
                    ListTile(
                      title: Text("sawat",textAlign: TextAlign.center,),
                    )
                  ],
                )
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 180.0,
            child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image.asset("images/silver.jpg"),
                    ListTile(
                      title: Text("sawat",textAlign: TextAlign.center,),
                    )
                  ],
                )
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 180.0,
            child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image.asset("images/silver.jpg"),
                    ListTile(
                      title: Text("sawat",textAlign: TextAlign.center,),
                    )
                  ],
                )
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 180.0,
            child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image.asset("images/silver.jpg"),
                    ListTile(
                      title: Text("sawat",textAlign: TextAlign.center,),
                    )
                  ],
                )
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 180.0,
            child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image.asset("images/silver.jpg"),
                    ListTile(
                      title: Text("sawat",textAlign: TextAlign.center,),
                    )
                  ],
                )
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            width: 180.0,
            child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image.asset("images/silver.jpg"),
                    ListTile(
                      title: Text("sawat",textAlign: TextAlign.center,),
                    )
                  ],
                )
            ),
          ),
          SizedBox(width: 10.0,),
        ],
      ),
    );
  }
}