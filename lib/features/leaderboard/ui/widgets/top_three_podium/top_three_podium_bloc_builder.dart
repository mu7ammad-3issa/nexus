import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/leaderboard/logic/leaderboard_cubit.dart';
import 'package:nexus/features/leaderboard/logic/leaderboard_state.dart';
import 'package:nexus/features/leaderboard/ui/widgets/top_three_podium/top_three_podium.dart';
import 'package:nexus/features/leaderboard/ui/widgets/top_three_podium/user_image_shimmer_loading.dart';

class TopThreePodiumBlocBuilder extends StatelessWidget {
  const TopThreePodiumBlocBuilder({super.key});

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
          leaderboardSuccess: (usersList) {
            var topThreeUsers = (usersList ?? []).take(3).toList();
            return setupSuccess(topThreeUsers);
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
    return const TopThreePodiumShimmerLoading();
  }

  Widget setupSuccess(topThreeUsers) {
    return TopThreePodium(
      topThreeUsers: topThreeUsers,
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
