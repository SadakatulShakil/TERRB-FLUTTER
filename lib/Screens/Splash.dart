import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/HomeScreen.dart';
import 'package:progress_indicators/progress_indicators.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    print("running splash");
    startTimer();
    super.initState();
  }

  startTimer() async{
    var duration = Duration(seconds: 5);
    return new Timer(duration, homePageRoute);
  }

  homePageRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => HomeScreen()
    ));
  }
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              margin:  EdgeInsets.only(bottom: 100.0),
              child: Image.asset("images/app_logo.png", width: 200, height: 200),
            ),
          ),
          Center(
            child: Container(
              margin:  EdgeInsets.only(top: 150.0),
              child: Stack(
                children: [
                  Text('অবসর', style: TextStyle(shadows: [
                    Shadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      offset: Offset(3.0, 3.0),
                    )],
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    color: new Color(0xFF29A74A)
                  )
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: JumpingDotsProgressIndicator(
                    fontSize: 50.0,
                    numberOfDots: 5,
                    color: new Color(0xFF29A74A),
                    milliseconds: 120,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin:  EdgeInsets.only(bottom: 10.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('কারিগরি সহায়তায় ADN Telecom', style: TextStyle(color: Colors.black)),
                )
              ],
            ),
          )

        ],
      ),
    );
  }


}