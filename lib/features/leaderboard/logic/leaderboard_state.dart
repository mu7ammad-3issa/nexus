import 'package:freezed_annotation/freezed_annotation.dart';
part 'leaderboard_state.freezed.dart';

@freezed
class LeaderboardState<T> with _$LeaderboardState<T> {
  const factory LeaderboardState.leaderboardInitial() = _LeaderboardInitial;
  const factory LeaderboardState.leaderboardLoading() = _LeaderboardLoading;
  const factory LeaderboardState.leaderboardSuccess(T data) =
      _LeaderboardSuccess<T>;
  const factory LeaderboardState.leaderboardError(String error) =
      _LeaderboardError;
}
