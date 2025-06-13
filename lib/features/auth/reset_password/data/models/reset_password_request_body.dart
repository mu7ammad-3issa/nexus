import 'package:json_annotation/json_annotation.dart';
part 'reset_password_request_body.g.dart';

@JsonSerializable()
class ResetPasswordRequestBody {
  final String otp;
  final String newPassword;

  ResetPasswordRequestBody({
    required this.otp,
    required this.newPassword,
  });

  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);
}
