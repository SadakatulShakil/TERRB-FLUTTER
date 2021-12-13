import 'package:flutter/material.dart';
import 'package:flutter_project/Api/http_service.dart';
import 'package:flutter_project/Model/Status.dart';
import 'package:flutter_project/Model/member.dart';
import 'package:intl/intl.dart';
import 'package:flutter_project/Services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReviewPage extends StatefulWidget {

@override
State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ReviewPage> {
  var name="", token, mobile="";
  Status? res;
  String? date, message;
  late HttpService httpService;
  ApiService apiService = ApiService();


  @override
  void initState(){
    setState(() {
      getStatus();
    });
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
            itemCount: res!.data!.length,
            itemBuilder: (context, i) {
             return listWidget(i);
            },
          )
        )
    ),
  );
  }

  String? getDateString(obg, index){
    return obg?.data?[index].date;

  }

  String? getMessageString(obg, index){
    return obg?.data?[index].message;

  }

  Widget listWidget(int index) {
    date = res?.data?[index].date;
   /* var dmyString = '23/4/1999';
    var get_date = DateFormat('d/M/yyyy').parse(dmyString);

    print("FormattedDate: "+ DateFormat.yMMMMd().format(get_date));*/
 return Card(
   elevation: 5,
   shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(10),
   ),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: Text('$date'),
           ),
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: Text("newwwwwwwwwwwwwwwwwwwwwwwwwwwww", style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
           )
         ],
       ),

 );
  }

  void getStatus() async{
    httpService = HttpService();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print("what Token: " + preferences.getString("token")!);
    res = (await apiService.CurrentStatus(preferences.getString("token")!));


    print("OutPut " +  res!.data!.length.toString());
  }

}


