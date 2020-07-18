import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GeneralStore extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Find Groceries Store here'),
      ),
      body:  WebView(
        initialUrl: 'https://www.google.co.in/maps/search/Groceries/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}