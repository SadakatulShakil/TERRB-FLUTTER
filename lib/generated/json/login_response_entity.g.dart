import 'package:flutter_project/generated/json/base/json_convert_content.dart';
import 'package:flutter_project/Api/LogIn/login_response_entity.dart';

LoginResponseEntity $LoginResponseEntityFromJson(Map<String, dynamic> json) {
	final LoginResponseEntity loginResponseEntity = LoginResponseEntity();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		loginResponseEntity.id = id;
	}
	final String? token = jsonConvert.convert<String>(json['token']);
	if (token != null) {
		loginResponseEntity.token = token;
	}
	return loginResponseEntity;
}

Map<String, dynamic> $LoginResponseEntityToJson(LoginResponseEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['token'] = entity.token;
	return data;
}