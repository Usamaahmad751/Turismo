import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class hotels extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Find hotels nearby'),
      ),
      body:  WebView(
        initialUrl: 'https://www.kayak.com/hotels/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}