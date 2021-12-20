import 'package:flutter/material.dart';
import 'package:flutter_project/Common/app_bar_with_back_button.dart';
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
      appBar: AppBarWithBackButton.appBarWithBack(),
     body: WebView(
       initialUrl: "http://apps.terbb.gov.bd/registration",
       javascriptMode: JavascriptMode.unrestricted,
     ),
    );
  }
}
