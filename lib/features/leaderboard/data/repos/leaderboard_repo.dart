import 'package:nexus/core/networking/api_error_handler.dart';
import 'package:nexus/core/networking/api_result.dart';
import 'package:nexus/core/networking/api_service.dart';
import 'package:nexus/features/leaderboard/data/models/leaderboard_response_model.dart';

class LeaderboardRepo {
  final ApiService _leaderboardApiService;

  LeaderboardRepo(this._leaderboardApiService);
  Future<ApiResult<List<LeaderboardUser>>> getLeaderboardUsersList() async {
    try {
      final response = await _leaderboardApiService.getLeaderboardUsersList();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
