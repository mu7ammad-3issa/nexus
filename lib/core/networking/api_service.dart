import 'package:dio/dio.dart';
import 'package:nexus/features/auth/forgot_password/data/models/forgot_password_request_body.dart';
import 'package:nexus/features/auth/login/data/models/login_request_body.dart';
import 'package:nexus/features/auth/login/data/models/login_response.dart';
import 'package:nexus/features/auth/otp/data/models/verify_otp_request_body.dart';
import 'package:nexus/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/reset_password/data/models/reset_password_request_body.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  @POST(ApiConstants.signupEndpoint)
  Future<dynamic> register(
    @Body() SignUpRequestBody signUpRequestBody,
  );
  @POST(ApiConstants.forgotPasswordEndpoint)
  Future<dynamic> forgotPassword(
    @Body() ForgotPasswordRequestBody forgotPasswordRequestBody,
  );

  @POST(ApiConstants.verifyOtpEndpoint)
  Future<dynamic> verifyOtp(
    @Body() VerifyOtpRequestBody otpRequestBody,
  );

  @POST(ApiConstants.resetPasswordEndpoint)
  Future<dynamic> resetPassword(
    @Body() ResetPasswordRequestBody resetPasswordRequestBody,
  );
}
