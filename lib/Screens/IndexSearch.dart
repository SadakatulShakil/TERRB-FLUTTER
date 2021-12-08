import 'dart:convert';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Api/UserResponse/single_user_entity.dart';
import 'package:flutter_project/Api/http_service.dart';
import 'package:flutter_project/Services/api_service.dart';
import 'package:fluttertoast/fluttertoast.dart';

class IndexSearch extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<IndexSearch> {
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
                      controller: nameController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                          border: OutlineInputBorder(),
                          hintText: 'P-123456',
                      ),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(left: 16.0,top: 10.0, right: 16.0),
                    child:SizedBox(
                      width: 100,
                      child: ElevatedButton(

                        onPressed: () async{
                          showToastMessage("Need to implement");
                          httpService = HttpService();
                          var index_no = nameController.text.split("-")[1];
                          print("Index: "+index_no);
                          Map<String, dynamic> data = {
                            "index_no" : index_no,
                            "otp" : "1234"
                          };
                          var res = await apiService.Login(data);
                          var mobile = jsonDecode(res)["data"]["mobile_no"];
                          print("mobile: "+mobile.toString());
                          /*getUser();
                          postData();*/

                          /*if(type != null && doneBefore != null && doneBefore == 'no'){
                            //showToastMessage(type+" and "+doneBefore);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterWebView()));
                          }else if(type != null && doneBefore != null && doneBefore == 'yes'){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => IndexSearch()));
                            showToastMessage("Need to go Index Search page !");
                          }*/
                        },
                        style: ElevatedButton.styleFrom(
                            primary: new Color(0xFF29A74A),
                        ),
                        child: Text("খুঁজুন"),
                      ),
                    ),
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

  Future getUser() async  {
    Response response;
    try {
      response = await httpService.getRequest("api/users/2");
      print(response.statusCode.toString());
      if(response.statusCode == 200){
        setState(() {

          SingleUserEntity singleUserEntity = SingleUserEntity.fromJson(response.data);
          var data = singleUserEntity.toString();

          print("New "'$data');

        });
      }else{
        print("Something went wrong!");
      }
    } on Exception catch (e) {
      print(e);
    }
  }
  Future postData()async{
    Dio dio = new Dio();

    dynamic fromData= {
      'email': "shakil.adn@gmail.com",
      'password': "123456"
    };

    String path = httpService.baseUrl+"api/register";
    var response = await dio.post(path,
    data: fromData,
    options: Options(headers: {
      'accept': 'application/json',
      'content-type': 'multipart/form-data',
    }
    ));
    return response.data;
  }

}
