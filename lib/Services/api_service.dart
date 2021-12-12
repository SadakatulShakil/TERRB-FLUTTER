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

  Future<String> CurrentStatus(Map<String,dynamic> data) async{
    try{
      var response = await http.post(
          Uri.parse(baseUrl+"applicationStatus"),
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
        return "error1";
      }
    }catch(e){
      print("resError: "+ e.toString());
      return "error2";
    }
  }
}