import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class schooler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schooler Sun*',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Schooler Sun*'),
        ),
        body: WebView(
          initialUrl: "https://schooler.sun-asterisk.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
