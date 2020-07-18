import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Cafeteria extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Find Cafe Here'),
      ),
      body:  WebView(
        initialUrl: 'https://www.ubereats.com/gb/near-me/cafe',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}