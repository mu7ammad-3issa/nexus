import 'package:json_annotation/json_annotation.dart';
part 'forgot_password_request_body.g.dart';

@JsonSerializable()
class ForgotPasswordRequestBody {
  final String email;

  const ForgotPasswordRequestBody({required this.email});

  Map<String, dynamic> toJson() => _$ForgotPasswordRequestBodyToJson(this);
}
