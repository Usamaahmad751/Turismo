import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Gyms extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Find gyms Here'),
      ),
      body:  WebView(
        initialUrl: 'https://search.trainaway.fit/search/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}