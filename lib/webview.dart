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

class facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HEDSPI.K65.工科大学',
      home: Scaffold(
        appBar: AppBar(
          title: Text('HEDSPI.K65.工科大学'),
        ),
        body: WebView(
          initialUrl: "https://www.facebook.com/groups/k65.hedspi",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class youtube1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HEDSPI.K65.工科大学',
      home: Scaffold(
        appBar: AppBar(
          title: Text('HEDSPI.K65.工科大学'),
        ),
        body: WebView(
          initialUrl: "https://youtube.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
