import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/leaderboard/data/repos/leaderboard_repo.dart';
import 'package:nexus/features/leaderboard/logic/leaderboard_state.dart';

class LeaderboardCubit extends Cubit<LeaderboardState> {
  final LeaderboardRepo _leaderboardRepo;
  LeaderboardCubit(this._leaderboardRepo)
      : super(const LeaderboardState.leaderboardInitial());

  void getLeaderboardUsersList() async {
    emit(const LeaderboardState.leaderboardLoading());
    final response = await _leaderboardRepo.getLeaderboardUsersList();
    response.when(
      success: (leaderboardUsersList) {
        emit(
          LeaderboardState.leaderboardSuccess(leaderboardUsersList),
        );
      },
      failure: (error) {
        emit(
          LeaderboardState.leaderboardError(error),
        );
      },
    );
  }
}
