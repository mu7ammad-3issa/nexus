import 'package:nexus/core/networking/api_error_handler.dart';
import 'package:nexus/core/networking/api_result.dart';
import 'package:nexus/core/networking/api_service.dart';
import 'package:nexus/features/auth/login/data/models/login_response.dart';

import '../models/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
