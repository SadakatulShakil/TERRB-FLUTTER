import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:webview_flutter/webview_flutter.dart' show JavascriptMode, WebView;

class RegisterWebView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<RegisterWebView> {
  bool showProgress = true;
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        title: Text('অবসর'),
        backgroundColor: new Color(0xFF29A74A),
      ),
     body: WebView(
       initialUrl: "http://apps.terbb.gov.bd/registration",
       javascriptMode: JavascriptMode.unrestricted,
     ),
    );
  }
}
