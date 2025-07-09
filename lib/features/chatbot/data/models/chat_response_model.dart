import 'package:json_annotation/json_annotation.dart';

part 'chat_response_model.g.dart';

@JsonSerializable(createToJson: false)
class ChatResponseModel {
  final List<Candidate>? candidates;

  ChatResponseModel(this.candidates);

  factory ChatResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class Candidate {
  final Content? content;

  Candidate({this.content});

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);
}

@JsonSerializable(createToJson: false)
class Content {
  final List<Part>? parts;
  final String? role;

  Content({this.parts, this.role});

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@JsonSerializable(createToJson: false)
class Part {
  final String? text;

  Part({this.text});

  factory Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);
}
