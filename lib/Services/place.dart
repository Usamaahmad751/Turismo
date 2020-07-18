import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Place extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Find Places Here'),
      ),
      body:  WebView(
        initialUrl: 'https://tourscanner.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}