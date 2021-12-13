import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
class ApiService{
  String baseUrl = "http://apps.terbb.gov.bd/api/";
  String baseUrl1 = "https://reqres.in/";

  Future<List> getPost() async{

    try{
      var response = await http.get(Uri.parse(baseUrl+"posts"));
      if(response.statusCode == 200){
        //success
        print(response.body);
        return jsonDecode(response.body);
      }else{
        return Future.error("Error to server !");
      }
    }catch(SocketException){
      return Future.error("Error to Fetch data !");
    }
  }

  Future<String> Login(Map<String,dynamic> data) async{
    try{
      var response = await http.post(
          Uri.parse(baseUrl+"app_login"),
          body: jsonEncode(data),
          headers: {
            "Content-Type": "application/json; charset=UTF-8",
          }
      );
      if(response.statusCode == 200){
        //success
        print("Registration: "+response.body);
        return response.body;
      }else{
        print("resCode: "+ response.statusCode.toString());
        return "error";
      }
    }catch(e){
      print("resError: "+ e.toString());
      return "error";
    }
  }

  var token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNDgxODg3NDZmN2FjNDIwNmRkNWU2ZGRhYmJiOGI5MDI2ZjljZGNjMGRjYTY5MDA0MWMyNGNiY2I4ZDFkYzlmMWNjNTAzMGQ2NmM5NTc0ZjkiLCJpYXQiOjE2Mzg2NzgwNjYuMjk3NTU3MSwibmJmIjoxNjM4Njc4MDY2LjI5NzU2MzEsImV4cCI6MTY3MDIxNDA2Ni4yODQ3MzIxLCJzdWIiOiI0MTk2NCIsInNjb3BlcyI6W119.lZO-ZUqCSq8Myoz78lJ863vDKvTvZnhV3W2GyLRKNHBbsdPwvsxHpPFbcoSCqW9q1k5opeulO_PSpsukgtfNyhY3KjZOzg6bT5IWH9SRBC7RL05z9tk_Up1g-r1VL5ltkL5VHGRLg3KwfW_H98vUun7gdCCwjJOPHP-gm9UZA5lN-2U0JC3VaWIKeChp3zG77VGC5nfirWgezjya2dc7sEVqZ7x63rP9QPzp5JA7w2w9pDEZ5R-mnOOudTQiJNbc1w6VcvDestaGAX3ndRf2dfH4InYtNR6zHsrdfwK-gAwsiAauI0nh7DVrQ_sijUNyCs0xCHZTaxshZ1SULIaB0d3suhZUSQG0zVrHzS_MtdTovoyPRV6G171JGRH_-TPRvwNxhdLSYvVJRWXTAOr8VrNiDydXJkgUZ7ecFJAFt6LYbxJT_iSTEM94H4IBzGwFZP6ik4lkTe0Z1cQliZBL_cNiFR_Sqq3ocsvz_MSyPhb3R-U33u8KrnRcGwVY9HZCoDX1L02Ye8-J1yKzHLELC8yctoFrHOOARMSJbPCdOt0WIgjSo4UtZtDwAXcK8qQn5z_223UExFsgIhm7Nc3SRElPN4w0IzeHwoyj0KHbh8MZtjTLMgUiIYdEIID9Rz5un176RexsXS2f6MTPFwo6aidRYsohsuo7QNf9imlM3sI";
  Future<String> CurrentStatus(token) async{
    print("Api_Service: "+token);
    try{
      var response = await http.post(
          Uri.parse(baseUrl+"applicationStatus"),
          headers: {
            "Authorization": "Bearer "+token
          }

      );
      if(response.statusCode == 200){
        //success
        print("Registration: "+response.body);
        return response.body;
      }else{
        print("resCode: "+ response.statusCode.toString());
        return "error1";
      }
    }catch(e){
      print("resError: "+ e.toString());
      return "error2";
    }
  }
}