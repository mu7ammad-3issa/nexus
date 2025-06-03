// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      details: json['details'] as String?,
      message: json['responseBody'] as String?,
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'details': instance.details,
      'responseBody': instance.message,
    };
