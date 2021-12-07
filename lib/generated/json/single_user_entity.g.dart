import 'package:flutter_project/generated/json/base/json_convert_content.dart';
import 'package:flutter_project/Api/UserResponse/single_user_entity.dart';

SingleUserEntity $SingleUserEntityFromJson(Map<String, dynamic> json) {
	final SingleUserEntity singleUserEntity = SingleUserEntity();
	final SingleUserData? data = jsonConvert.convert<SingleUserData>(json['data']);
	if (data != null) {
		singleUserEntity.data = data;
	}
	final SingleUserSupport? support = jsonConvert.convert<SingleUserSupport>(json['support']);
	if (support != null) {
		singleUserEntity.support = support;
	}
	return singleUserEntity;
}

Map<String, dynamic> $SingleUserEntityToJson(SingleUserEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] = entity.data.toJson();
	data['support'] = entity.support.toJson();
	return data;
}

SingleUserData $SingleUserDataFromJson(Map<String, dynamic> json) {
	final SingleUserData singleUserData = SingleUserData();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		singleUserData.id = id;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		singleUserData.email = email;
	}
	final String? firstName = jsonConvert.convert<String>(json['first_name']);
	if (firstName != null) {
		singleUserData.firstName = firstName;
	}
	final String? lastName = jsonConvert.convert<String>(json['last_name']);
	if (lastName != null) {
		singleUserData.lastName = lastName;
	}
	final String? avatar = jsonConvert.convert<String>(json['avatar']);
	if (avatar != null) {
		singleUserData.avatar = avatar;
	}
	return singleUserData;
}

Map<String, dynamic> $SingleUserDataToJson(SingleUserData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['email'] = entity.email;
	data['first_name'] = entity.firstName;
	data['last_name'] = entity.lastName;
	data['avatar'] = entity.avatar;
	return data;
}

SingleUserSupport $SingleUserSupportFromJson(Map<String, dynamic> json) {
	final SingleUserSupport singleUserSupport = SingleUserSupport();
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		singleUserSupport.url = url;
	}
	final String? text = jsonConvert.convert<String>(json['text']);
	if (text != null) {
		singleUserSupport.text = text;
	}
	return singleUserSupport;
}

Map<String, dynamic> $SingleUserSupportToJson(SingleUserSupport entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['url'] = entity.url;
	data['text'] = entity.text;
	return data;
}