import 'dart:io';

import 'package:nexus/core/networking/api_result.dart';
import 'package:nexus/core/networking/api_service.dart';
import 'package:nexus/features/burn_scan/data/models/burn_analysis_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';

class BurnScanRepo {
  final ApiService _apiService;
  BurnScanRepo(this._apiService);
  Future<ApiResult<BurnAnalysisResponseModel>> analyzeBurn(File image) async {
    try {
      final response = await _apiService.analyzeBurn(image);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
