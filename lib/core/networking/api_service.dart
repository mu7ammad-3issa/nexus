import 'dart:io';
import 'package:dio/dio.dart';
import 'package:nexus/features/auth/forgot_password/data/models/forgot_password_request_body.dart';
import 'package:nexus/features/auth/login/data/models/login_request_body.dart';
import 'package:nexus/features/auth/login/data/models/login_response.dart';
import 'package:nexus/features/auth/otp/data/models/verify_otp_request_body.dart';
import 'package:nexus/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:nexus/features/leaderboard/data/models/leaderboard_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

import '../../features/auth/reset_password/data/models/reset_password_request_body.dart';
import '../../features/burn_scan/data/models/burn_analysis_response_model.dart';
import '../../features/chatbot/data/models/chat_request_body.dart';
import '../../features/chatbot/data/models/chat_response_model.dart';
import '../../features/plans/data/models/plans_response_model.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

const String geminiApiKey = "AIzaSyBB_VGNjXlNhY8ILUIAxn5qc23t61Euwmg";

@retrofit.RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @retrofit.POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(
    @retrofit.Body() LoginRequestBody loginRequestBody,
  );
  @retrofit.POST(ApiConstants.signupEndpoint)
  Future<dynamic> register(
    @retrofit.Body() SignUpRequestBody signUpRequestBody,
  );
  @retrofit.POST(ApiConstants.forgotPasswordEndpoint)
  Future<dynamic> forgotPassword(
    @retrofit.Body() ForgotPasswordRequestBody forgotPasswordRequestBody,
  );

  @retrofit.POST(ApiConstants.verifyOtpEndpoint)
  Future<dynamic> verifyOtp(
    @retrofit.Body() VerifyOtpRequestBody otpRequestBody,
  );

  @retrofit.POST(ApiConstants.resetPasswordEndpoint)
  Future<dynamic> resetPassword(
    @retrofit.Body() ResetPasswordRequestBody resetPasswordRequestBody,
  );

  @retrofit.GET(ApiConstants.leaderboardEndpoint)
  Future<List<LeaderboardUser>> getLeaderboardUsersList();

  @retrofit.POST(ApiConstants.burnClassificationUrl)
  @retrofit.MultiPart()
  Future<BurnAnalysisResponseModel> analyzeBurn(
    @retrofit.Part(name: "fileup") File image,
  );

  @retrofit.POST(ApiConstants.chatBotUrl)
  Future<ChatResponseModel> generateContent(
    @retrofit.Path("apiKey") String apiKey,
    @retrofit.Body() ChatRequestBody requestBody,
  );
  @retrofit.GET(ApiConstants.plansEndpoint)
  Future<List<PlansResponseModel>> getPlans();
}
