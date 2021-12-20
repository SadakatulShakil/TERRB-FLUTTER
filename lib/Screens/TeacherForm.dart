import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/Common/app_bar_home_page.dart';
import 'package:flutter_project/Common/app_bar_with_back_button.dart';
import 'dart:developer';
import 'package:flutter_project/Model/member.dart';
import 'package:flutter_project/Screens/IndexSearch.dart';
import 'package:flutter_project/Screens/MemberDetails.dart';
import 'package:flutter_project/helpers/utils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_project/Screens/RegisterWebView.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeacherForm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<TeacherForm> {
  List<Color> colorG = [Colors.green, Colors.red, Colors.green];
  List<Color> colorS = [Colors.green.shade900, Colors.green.shade900, Colors.green.shade900];
  List<Color> colorShade = [Colors.grey, Colors.grey, Colors.grey];
  String isClick = "";
  var type, doneBefore;
  int val = -1;
  bool _flag = false;
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      appBar: AppBarWithBackButton.appBarWithBack(),
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
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isClick = "school";
                        });
                        type = "স্কুল";
                      },
                      child: Container(
                        width: 250,
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                              colors: isClick == 'school' ? colorS : colorG,
                            ),

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
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 8.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isClick = "college";
                        });
                        type = "কলেজ";
                      },
                      child: Container(
                        width: 250,
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                              colors: isClick == 'college' ? colorS : colorG,
                            ),

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
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 8.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isClick = "madrasa";
                        });
                        setState(() {
                        });
                        type = "মাদ্রাসা";
                      },
                      child: Container(
                        width: 250,
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                              colors: isClick == 'madrasa' ? colorS : colorG,
                            ),

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
                  ),

                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 8.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isClick = "schoolAndCollege";
                        });
                        setState(() {
                        });
                        type = "স্কুল এন্ড কলেজ";
                      },
                      child: Container(
                        width: 250,
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                              colors: isClick == 'schoolAndCollege' ? colorS : colorG,
                            ),

                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: new Padding(
                          padding: new EdgeInsets.all(5.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: new Text(
                                  "স্কুল এন্ড কলেজ",
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
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 8.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isClick = "karigori";
                        });
                        type = "কারিগরি";
                      },
                      child: Container(
                        width: 250,
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                              colors: isClick == 'karigori' ? colorS : colorG,
                            ),

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
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0, bottom: 8.0),
                    child: Container(
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
                    child:InkWell(
                      onTap: (){
                        if(type != null && doneBefore != null && doneBefore == 'no'){
                          //showToastMessage(type+" and "+doneBefore);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterWebView()));
                        }else if(type != null && doneBefore != null && doneBefore == 'yes'){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => IndexSearch()));
                          showToastMessage("Need to go Index Search page !");
                        }
                      },
                      child: Container(
                        width: 120,
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                              colors: (type != null && doneBefore != null) ? colorG : colorShade,
                            ),

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
          doneBefore = "yes";
          break;
        case 1:
          doneBefore = "no";
          break;
      }
    });
  }

  void showToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message, //message to show toast
        toastLength: Toast.LENGTH_LONG, //duration for message to show
        gravity: ToastGravity.BOTTOM, //where you want to show, top, bottom
        timeInSecForIosWeb: 1, //for iOS only
        textColor: Colors.white, //message text color
        fontSize: 16.0 //message font size
    );
  }
}

