import 'package:nexus/core/networking/api_result.dart';
import 'package:nexus/core/networking/api_service.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../models/forgot_password_request_body.dart';

class ForgotPasswordRepo {
  final ApiService _apiService;
  ForgotPasswordRepo(this._apiService);
  Future<ApiResult<dynamic>> forgotPassword(
      ForgotPasswordRequestBody forgotPasswordRequestBody) async {
    try {
      final response =
          await _apiService.forgotPassword(forgotPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ApiErrorHandler.handle(error),
      );
    }
  }
}
