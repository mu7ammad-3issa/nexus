// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burn_analysis_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BurnAnalysisResponseModel _$BurnAnalysisResponseModelFromJson(
        Map<String, dynamic> json) =>
    BurnAnalysisResponseModel(
      error: json['error'] as bool,
      result: BurnResult.fromJson(json['result'] as Map<String, dynamic>),
      disclaimer: json['disclaimer'] as String,
    );

Map<String, dynamic> _$BurnAnalysisResponseModelToJson(
        BurnAnalysisResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'result': instance.result,
      'disclaimer': instance.disclaimer,
    };

BurnResult _$BurnResultFromJson(Map<String, dynamic> json) => BurnResult(
      classification: json['classification'] as String,
      color: json['color'] as String,
      confidence: json['confidence'] as String,
      description: json['description'] as String,
      emergency: json['emergency'] as bool,
      healingTime: json['healing_time'] as String,
      severity: json['severity'] as String,
      symptoms:
          (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
      treatment:
          (json['treatment'] as List<dynamic>).map((e) => e as String).toList(),
      whenToSeekHelp: json['when_to_seek_help'] as String,
    );

Map<String, dynamic> _$BurnResultToJson(BurnResult instance) =>
    <String, dynamic>{
      'classification': instance.classification,
      'color': instance.color,
      'confidence': instance.confidence,
      'description': instance.description,
      'emergency': instance.emergency,
      'healing_time': instance.healingTime,
      'severity': instance.severity,
      'symptoms': instance.symptoms,
      'treatment': instance.treatment,
      'when_to_seek_help': instance.whenToSeekHelp,
    };
