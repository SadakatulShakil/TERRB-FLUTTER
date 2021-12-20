import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Api/http_service.dart';
import 'package:flutter_project/Common/app_bar_with_back_button.dart';
import 'package:flutter_project/Screens/OtpScreen.dart';
import 'package:flutter_project/Services/api_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IndexSearch extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<IndexSearch> {

  int _button_enable = 0;
  List<Color> colorG = [Colors.green, Colors.red, Colors.green];
  List<Color> colorS = [Colors.green.shade900, Colors.green.shade900, Colors.green.shade900];
  List<Color> colorShade = [Colors.grey, Colors.grey, Colors.grey];
  showLoaderDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text("Index searching.."),
          )
        ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }

  TextEditingController nameController = TextEditingController();
  late HttpService httpService;
  late Dio dio = new Dio();

  ApiService apiService = ApiService();
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
                  Padding(padding: new EdgeInsets.all(8.0)
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 8.0, top: 50.0, right: 8.0, bottom: 10.0),
                    child: Text(
                      "প্রিফিক্স সহ আপনার ইনডেক্স নম্বর লিখুন",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 22.0)
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                    child: TextField (
                      maxLength: 12,
                      controller: nameController,
                      textAlign: TextAlign.center,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                          border: OutlineInputBorder(),
                          hintText: 'P-123456',
                      ),
                      onChanged: (String text) {
                        if(text.length>7 && text.length<12){
                          String letterOne = text[0];
                          String letterTwo = text[1];
                          RegExp regex = RegExp("[a-zA-Z]");
                          if(regex.hasMatch(letterOne) && letterTwo == ("-")){
                            _button_enable = 1;
                          }
                        }
                      },
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 16.0,top: 10.0, right: 16.0),
                    child:InkWell(
                      onTap: () async{
                       ///Do login task
                        if(_button_enable == 1){
                          showLoaderDialog(context);
                          FocusScope.of(context).unfocus();
                          int min = 1000; //min and max values act as your 6 digit range
                          int max = 9999;
                          var randomizer = new Random();
                          var rNum = min + randomizer.nextInt(max - min);
                          showToastMessage("Need to implement");
                          httpService = HttpService();
                          var index_no = nameController.text.split("-")[1];
                          print("Index & Otp: "+index_no+"...."+rNum.toString());
                          Map<String, dynamic> data = {
                            "index_no" : index_no,
                            "otp" : rNum.toString()
                          };
                          var res = await apiService.Login(data);
                          var mobile = jsonDecode(res)["data"]["mobile_no"];
                          var token = jsonDecode(res)["data"]["token"];
                          var name = jsonDecode(res)["data"]["name"];
                          if(res.isEmpty){
                            new Center(
                                child: CircularProgressIndicator()
                            );
                          }else{
                            saveLogInPref(mobile, token, name, rNum);
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerify(mobile.toString(), rNum.toString())));
                          }
                          print("mobile: "+mobile.toString());
                        }
                      },
                      child: Container(
                        width: 120,
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                              colors: (_button_enable == 1) ? colorG : colorShade,
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
                                  "খুঁজুন",
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
                    /*child:SizedBox(
                      width: 100,
                      child: ElevatedButton(

                        onPressed: () async{
                          showLoaderDialog(context);
                          FocusScope.of(context).unfocus();
                          int min = 1000; //min and max values act as your 6 digit range
                          int max = 9999;
                          var randomizer = new Random();
                          var rNum = min + randomizer.nextInt(max - min);
                          showToastMessage("Need to implement");
                          httpService = HttpService();
                          var index_no = nameController.text.split("-")[1];
                          print("Index & Otp: "+index_no+"...."+rNum.toString());
                          Map<String, dynamic> data = {
                            "index_no" : index_no,
                            "otp" : rNum.toString()
                          };
                          var res = await apiService.Login(data);
                          var mobile = jsonDecode(res)["data"]["mobile_no"];
                          var token = jsonDecode(res)["data"]["token"];
                          var name = jsonDecode(res)["data"]["name"];
                          if(res.isEmpty){
                            new Center(
                                child: CircularProgressIndicator()
                            );
                          }else{
                            saveLogInPref(mobile, token, name, rNum);
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerify(mobile.toString(), rNum.toString())));
                          }
                          print("mobile: "+mobile.toString());

                        },
                        style: ElevatedButton.styleFrom(
                            primary: new Color(0xFF29A74A),
                        ),
                        child: Text("খুঁজুন"),
                      ),
                    ),*/
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
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

  void saveLogInPref(mobile, token, name, rNum) {
      setAllPref(mobile.toString(), token.toString(), name.toString(), rNum.toString()).then((bool committed){
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerify(mobile.toString(), rNum.toString())));
    });
  }

  Future<bool> setAllPref(String mobile, String token, String name, String otp) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("token", token);
    preferences.setString("mobile", mobile);
    preferences.setString("name", name);
    preferences.setString("otp", otp);

    return preferences.commit();
  }

}
