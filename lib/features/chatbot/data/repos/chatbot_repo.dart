import 'package:nexus/core/networking/api_error_handler.dart';
import 'package:nexus/core/networking/api_result.dart';
import 'package:nexus/core/networking/api_service.dart';
import 'package:nexus/features/chatbot/data/models/chat_request_body.dart';
import 'package:nexus/features/chatbot/data/models/chat_response_model.dart';

class ChatbotRepo {
  final ApiService _apiService;

  ChatbotRepo(this._apiService);

  Future<ApiResult<ChatResponseModel>> generateContent(
      ChatRequestBody requestBody) async {
    try {
      final response =
          await _apiService.generateContent(geminiApiKey, requestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
