// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequestBody _$ResetPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordRequestBody(
      otp: json['otp'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$ResetPasswordRequestBodyToJson(
        ResetPasswordRequestBody instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'newPassword': instance.newPassword,
    };
