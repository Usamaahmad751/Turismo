
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Color iconColor= Color.fromRGBO(255,255,255, 1);

InputDecoration textInputDecoration= InputDecoration(
    fillColor: Colors.grey,
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: BorderSide(color: Colors.black,width: 3.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: BorderSide(color: Colors.blue,width: 3.0),
    )
);
