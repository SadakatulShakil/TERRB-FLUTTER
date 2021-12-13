import 'package:flutter/material.dart';
import 'package:flutter_project/Api/http_service.dart';
import 'package:flutter_project/Model/member.dart';
import 'package:flutter_project/Services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReviewPage extends StatefulWidget {

@override
State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ReviewPage> {
  var name="", token, mobile="";
  var res;
  late HttpService httpService;
  ApiService apiService = ApiService();

  @override
  void initState(){
    getStatus();
    super.initState();
  }

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
    body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 2.0, right: 10.0, bottom: 2.0),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, i) {
             return listWidget(i);
            },
          )
        )
    ),
  );
  }

  Widget listWidget(int index) {
 return Card(
   elevation: 5,
   shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(10),
   ),
   child: ListTile(
     title: Text("Date"),
     subtitle: Text("Details of date"),
   ),
 );
  }

  void getStatus() async{
    httpService = HttpService();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print("what Token: " + preferences.getString("token")!);
    res = await apiService.CurrentStatus(preferences.getString("token")!);
    print("OutPut " +  res.toString());
  }

}


