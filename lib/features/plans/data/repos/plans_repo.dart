import 'package:nexus/core/networking/api_error_handler.dart';
import 'package:nexus/core/networking/api_result.dart';
import 'package:nexus/core/networking/api_service.dart';

import '../models/plans_response_model.dart';

class PlansRepo {
  final ApiService _apiService;

  PlansRepo(this._apiService);

  Future<ApiResult<List<PlansResponseModel>>> getPlans() async {
    try {
      final response = await _apiService.getPlans();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
