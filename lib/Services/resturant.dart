import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Resturant extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Find resturants Here'),
      ),
      body:  WebView(
        initialUrl: 'https://www.ubereats.com/near-me',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}