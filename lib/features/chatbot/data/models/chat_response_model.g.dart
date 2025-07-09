// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatResponseModel _$ChatResponseModelFromJson(Map<String, dynamic> json) =>
    ChatResponseModel(
      (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Candidate _$CandidateFromJson(Map<String, dynamic> json) => Candidate(
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
    );

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      parts: (json['parts'] as List<dynamic>?)
          ?.map((e) => Part.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] as String?,
    );

Part _$PartFromJson(Map<String, dynamic> json) => Part(
      text: json['text'] as String?,
    );
