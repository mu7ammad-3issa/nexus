import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/leaderboard/logic/leaderboard_cubit.dart';
import 'package:nexus/features/leaderboard/logic/leaderboard_state.dart';
import 'package:nexus/features/leaderboard/ui/widgets/rankings_list/rankings_list_view.dart';
import 'package:nexus/features/leaderboard/ui/widgets/rankings_list/rankings_shimmer_loading.dart';

class RankingsBlocBuilder extends StatelessWidget {
  const RankingsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardCubit, LeaderboardState>(
      buildWhen: (previous, current) =>
          current is LeaderboardLoading ||
          current is LeaderboardSuccess ||
          current is LeaderboardError,
      builder: (context, state) {
        return state.maybeWhen(
          leaderboardLoading: () {
            return setupLoading();
          },
          leaderboardSuccess: (userList) {
            var restOfUsers = (userList ?? []).skip(3).toList();
            return setupSuccess(restOfUsers);
          },
          leaderboardError: (error) {
            return setupError();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return const RankingsShimmerLoading();
  }

  Widget setupSuccess(restOfUsers) {
    return RankingsListView(restOfUsersList: restOfUsers);
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
