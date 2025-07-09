// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plans_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlansResponseModel _$PlansResponseModelFromJson(Map<String, dynamic> json) =>
    PlansResponseModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => PlanOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$PlansResponseModelToJson(PlansResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'options': instance.options,
      'icon': instance.icon,
    };

PlanOption _$PlanOptionFromJson(Map<String, dynamic> json) => PlanOption(
      id: (json['id'] as num).toInt(),
      durationMonths: (json['durationMonths'] as num).toInt(),
      label: json['label'] as String,
      price: (json['price'] as num).toInt(),
      priceUnit: json['priceUnit'] as String,
      note: json['note'] as String,
      features: (json['features'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
      planId: (json['planId'] as num).toInt(),
    );

Map<String, dynamic> _$PlanOptionToJson(PlanOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'durationMonths': instance.durationMonths,
      'label': instance.label,
      'price': instance.price,
      'priceUnit': instance.priceUnit,
      'note': instance.note,
      'features': instance.features,
      'planId': instance.planId,
    };

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      planOptionId: (json['planOptionId'] as num).toInt(),
    );

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'planOptionId': instance.planOptionId,
    };
