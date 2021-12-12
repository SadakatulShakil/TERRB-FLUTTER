import 'dart:convert';
import 'package:flutter_project/generated/json/base/json_field.dart';
import 'package:flutter_project/generated/json/current_status_entity.g.dart';

@JsonSerializable()
class CurrentStatusEntity {

	late bool success;
	late List<CurrentStatusData> data;
	late String message;
  
  CurrentStatusEntity();

  factory CurrentStatusEntity.fromJson(Map<String, dynamic> json) => $CurrentStatusEntityFromJson(json);

  Map<String, dynamic> toJson() => $CurrentStatusEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CurrentStatusData {

	late String date;
	late String message;
  
  CurrentStatusData();

  factory CurrentStatusData.fromJson(Map<String, dynamic> json) => $CurrentStatusDataFromJson(json);

  Map<String, dynamic> toJson() => $CurrentStatusDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}