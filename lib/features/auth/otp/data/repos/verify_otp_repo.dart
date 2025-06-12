import 'package:nexus/core/networking/api_error_handler.dart';
import 'package:nexus/core/networking/api_result.dart';
import 'package:nexus/core/networking/api_service.dart';
import 'package:nexus/features/auth/otp/data/models/verify_otp_request_body.dart';

class VerifyOtpRepo {
  final ApiService _apiService;
  VerifyOtpRepo(this._apiService);
  Future<ApiResult<dynamic>> verifyOtp(
      VerifyOtpRequestBody verifyOtpRequestBody) async {
    try {
      final response = await _apiService.verifyOtp(verifyOtpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
