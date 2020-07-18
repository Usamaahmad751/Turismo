import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class pharmacies extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Find hospitals Here'),
      ),
      body:  WebView(
        initialUrl: 'https://www.google.co.in/maps/search/Pharmacies/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}