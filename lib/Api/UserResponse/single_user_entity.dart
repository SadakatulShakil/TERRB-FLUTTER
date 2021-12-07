import 'dart:convert';
import 'package:flutter_project/generated/json/base/json_field.dart';
import 'package:flutter_project/generated/json/single_user_entity.g.dart';

@JsonSerializable()
class SingleUserEntity {

	late SingleUserData data;
	late SingleUserSupport support;
  
  SingleUserEntity();

  factory SingleUserEntity.fromJson(Map<String, dynamic> json) => $SingleUserEntityFromJson(json);

  Map<String, dynamic> toJson() => $SingleUserEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

}

@JsonSerializable()
class SingleUserData {

	late int id;
	late String email;
	@JSONField(name: "first_name")
	late String firstName;
	@JSONField(name: "last_name")
	late String lastName;
	late String avatar;
  
  SingleUserData();

  factory SingleUserData.fromJson(Map<String, dynamic> json) => $SingleUserDataFromJson(json);

  Map<String, dynamic> toJson() => $SingleUserDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SingleUserSupport {

	late String url;
	late String text;
  
  SingleUserSupport();

  factory SingleUserSupport.fromJson(Map<String, dynamic> json) => $SingleUserSupportFromJson(json);

  Map<String, dynamic> toJson() => $SingleUserSupportToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }



}