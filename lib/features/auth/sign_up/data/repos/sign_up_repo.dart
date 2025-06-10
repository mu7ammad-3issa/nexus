import 'package:nexus/core/networking/api_result.dart';
import 'package:nexus/core/networking/api_service.dart';
import 'package:nexus/features/auth/sign_up/data/models/sign_up_request_body.dart';

import '../../../../../core/networking/api_error_handler.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<dynamic>> signUp(SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.register(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ApiErrorHandler.handle(error),
      );
    }
  }
}
