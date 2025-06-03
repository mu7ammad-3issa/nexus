import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final int? statusCode;
  final String? details;
  @JsonKey(name: 'responseBody')
  final String? message;

  ApiErrorModel({
    this.statusCode,
    this.details,
    this.message,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
