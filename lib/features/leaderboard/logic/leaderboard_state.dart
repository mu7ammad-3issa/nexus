import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexus/features/leaderboard/data/models/leaderboard_response_model.dart';
part 'leaderboard_state.freezed.dart';

@freezed
class LeaderboardState<T> with _$LeaderboardState<T> {
  const factory LeaderboardState.leaderboardInitial() = _LeaderboardInitial;
  const factory LeaderboardState.leaderboardLoading() = LeaderboardLoading;
  const factory LeaderboardState.leaderboardSuccess(
      List<LeaderboardUser?>? usersList) = LeaderboardSuccess;
  const factory LeaderboardState.leaderboardError(String error) =
      LeaderboardError;
}
