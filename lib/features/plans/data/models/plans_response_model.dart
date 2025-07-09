import 'package:json_annotation/json_annotation.dart';

part 'plans_response_model.g.dart';

@JsonSerializable()
class PlansResponseModel {
  final int id;
  final String name;
  final String description;
  final List<PlanOption> options;
  final String icon;

  PlansResponseModel({
    required this.id,
    required this.name,
    required this.description,
    required this.options,
    required this.icon,
  });

  factory PlansResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PlansResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlansResponseModelToJson(this);
}

@JsonSerializable()
class PlanOption {
  final int id;
  final int durationMonths;
  final String label;
  final int price;
  final String priceUnit;
  final String note;
  final List<Feature> features;
  final int planId;

  PlanOption({
    required this.id,
    required this.durationMonths,
    required this.label,
    required this.price,
    required this.priceUnit,
    required this.note,
    required this.features,
    required this.planId,
  });

  factory PlanOption.fromJson(Map<String, dynamic> json) =>
      _$PlanOptionFromJson(json);

  Map<String, dynamic> toJson() => _$PlanOptionToJson(this);
}

@JsonSerializable()
class Feature {
  final int id;
  final String description;
  final int planOptionId;

  Feature({
    required this.id,
    required this.description,
    required this.planOptionId,
  });

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureToJson(this);
}
