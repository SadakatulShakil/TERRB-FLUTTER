import 'package:flutter_project/generated/json/base/json_convert_content.dart';
import 'package:flutter_project/Api/CurrentStatus/current_status_entity.dart';

CurrentStatusEntity $CurrentStatusEntityFromJson(Map<String, dynamic> json) {
	final CurrentStatusEntity currentStatusEntity = CurrentStatusEntity();
	final bool? success = jsonConvert.convert<bool>(json['success']);
	if (success != null) {
		currentStatusEntity.success = success;
	}
	final List<CurrentStatusData>? data = jsonConvert.convertListNotNull<CurrentStatusData>(json['data']);
	if (data != null) {
		currentStatusEntity.data = data;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		currentStatusEntity.message = message;
	}
	return currentStatusEntity;
}

Map<String, dynamic> $CurrentStatusEntityToJson(CurrentStatusEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['success'] = entity.success;
	data['data'] =  entity.data.map((v) => v.toJson()).toList();
	data['message'] = entity.message;
	return data;
}

CurrentStatusData $CurrentStatusDataFromJson(Map<String, dynamic> json) {
	final CurrentStatusData currentStatusData = CurrentStatusData();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		currentStatusData.date = date;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		currentStatusData.message = message;
	}
	return currentStatusData;
}

Map<String, dynamic> $CurrentStatusDataToJson(CurrentStatusData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['message'] = entity.message;
	return data;
}