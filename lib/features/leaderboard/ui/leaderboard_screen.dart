import 'package:flutter/material.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/leaderboard/ui/widgets/leaderboard_header.dart';
import 'package:nexus/features/leaderboard/ui/widgets/rankings_list/rankings_bloc_builder.dart';
import 'package:nexus/features/leaderboard/ui/widgets/top_three_podium/top_three_podium_bloc_builder.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(20),
            const LeaderboardHeader(),
            verticalSpace(24),
            const TopThreePodiumBlocBuilder(),
            const RankingsBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
