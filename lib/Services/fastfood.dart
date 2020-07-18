import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FastFood extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Find fastfood Here'),
      ),
      body:  WebView(
        initialUrl: 'https://www.ubereats.com/near-me/fast-food',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}