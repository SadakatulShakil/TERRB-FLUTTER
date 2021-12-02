import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_project/Model/member.dart';
import 'package:flutter_project/Screens/MemberDetails.dart';
import 'package:flutter_project/helpers/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeacherForm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<TeacherForm> {
  bool _value = false;
  int val = -1;
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                      padding: new EdgeInsets.all(5.0)
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 100.0, right: 0.0, bottom: 10.0),
                    child: Text(
                      "প্রতিষ্ঠানের ধরন",
                      textAlign: TextAlign.center,
                      style: new TextStyle(fontSize: 24.0)
                    ),
                  ),
                  //button for teacher//
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 8.0),
                    child: Container(
                      width: 250,
                      decoration: new BoxDecoration(
                          color: new Color(0xFF29A74A),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: new Padding(
                        padding: new EdgeInsets.all(5.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: new Text(
                                "স্কুল",
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: new TextStyle(fontSize: 18.0,color: new Color(0xFFFFFFFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 8.0),
                    child: Container(
                      width: 250,
                      decoration: new BoxDecoration(
                          color: new Color(0xFF29A74A),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: new Padding(
                        padding: new EdgeInsets.all(5.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: new Text(
                                "কলেজ",
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: new TextStyle(fontSize: 18.0,color: new Color(0xFFFFFFFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 8.0),
                    child: Container(
                      width: 250,
                      decoration: new BoxDecoration(
                          color: new Color(0xFF29A74A),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: new Padding(
                        padding: new EdgeInsets.all(5.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: new Text(
                                "কারিগরি",
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: new TextStyle(fontSize: 18.0,color: new Color(0xFFFFFFFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 8.0),
                    child: Container(
                      width: 250,
                      decoration: new BoxDecoration(
                          color: new Color(0xFF29A74A),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: new Padding(
                        padding: new EdgeInsets.all(5.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: new Text(
                             "মাদ্রাসা",
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: new TextStyle(fontSize: 18.0,color: new Color(0xFFFFFFFF)),
                            ),
                          )
                        ],
                      ),
                      ),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0, bottom: 8.0),
                    child: Container(
                     /* decoration: new BoxDecoration(
                          color: new Color(0xFF29A74A),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),*/
                      child: new Padding(
                        padding: new EdgeInsets.all(5.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: new Text(
                                "আপনি কি আবেদন সম্পন্ন করেছেন?",
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Radio button for confirmation//
                  new Padding(padding: new EdgeInsets.only(top: 10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Radio(
                        value: 0,
                        groupValue: val,
                        onChanged: _handleRadioValueChange,
                        activeColor: new Color(0xFF29A74A),
                      ),
                      new Text(
                        'হ্যাঁ',
                        style: new TextStyle(fontSize: 20.0),
                      ),
                      new Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: _handleRadioValueChange,
                        activeColor: new Color(0xFF29A74A),
                      ),
                      new Text(
                        'না',
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),

                  //submit button//
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0, bottom: 8.0),
                    child: Container(
                      width: 150,
                      decoration: new BoxDecoration(
                          color: new Color(0xFF29A74A),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: new Padding(
                        padding: new EdgeInsets.all(5.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: new Text(
                                "ঠিক আছে",
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: new TextStyle(fontSize: 18.0,color: new Color(0xFFFFFFFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }


  void _handleRadioValueChange(int? value) {
    setState(() {
      val = value!;

      switch (value) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }
}
