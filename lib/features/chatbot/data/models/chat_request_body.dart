import 'package:json_annotation/json_annotation.dart';

part 'chat_request_body.g.dart';

@JsonSerializable(createFactory: false)
class ChatRequestBody {
  final List<Content> contents;

  ChatRequestBody({required this.contents});

  Map<String, dynamic> toJson() => _$ChatRequestBodyToJson(this);
}

@JsonSerializable(createFactory: false)
class Content {
  final String role;
  final List<Part> parts;

  Content({required this.role, required this.parts});

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}

@JsonSerializable(createFactory: false)
class Part {
  final String text;

  Part({required this.text});

  Map<String, dynamic> toJson() => _$PartToJson(this);
}
