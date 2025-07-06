import 'package:json_annotation/json_annotation.dart';

part 'burn_analysis_response_model.g.dart';

// This is the new top-level response model
@JsonSerializable()
class BurnAnalysisResponseModel {
  final bool error;
  final BurnResult result;
  final String disclaimer;

  BurnAnalysisResponseModel({
    required this.error,
    required this.result,
    required this.disclaimer,
  });

  factory BurnAnalysisResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BurnAnalysisResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$BurnAnalysisResponseModelToJson(this);
}

// This model represents the "result" object in the JSON
@JsonSerializable()
class BurnResult {
  final String classification;
  final String color;
  final String confidence;
  final String description;
  final bool emergency;
  @JsonKey(name: 'healing_time')
  final String healingTime;
  final String severity;
  final List<String> symptoms;
  final List<String> treatment;
  @JsonKey(name: 'when_to_seek_help')
  final String whenToSeekHelp;

  BurnResult({
    required this.classification,
    required this.color,
    required this.confidence,
    required this.description,
    required this.emergency,
    required this.healingTime,
    required this.severity,
    required this.symptoms,
    required this.treatment,
    required this.whenToSeekHelp,
  });

  factory BurnResult.fromJson(Map<String, dynamic> json) =>
      _$BurnResultFromJson(json);

  Map<String, dynamic> toJson() => _$BurnResultToJson(this);
}
