import 'dart:convert';
import 'package:flutter_project/generated/json/base/json_field.dart';
import 'package:flutter_project/generated/json/login_response_entity.g.dart';

@JsonSerializable()
class LoginResponseEntity {

	late int id;
	late String token;
  
  LoginResponseEntity();

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) => $LoginResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => $LoginResponseEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}