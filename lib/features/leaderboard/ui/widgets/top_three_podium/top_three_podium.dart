import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/features/leaderboard/data/models/leaderboard_response_model.dart';

import '../../../../../core/constants/assets.dart';
import '../../../../../core/helpers/helper_methods/spacing.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/theming/colors_manager.dart';

class TopThreePodium extends StatelessWidget {
  const TopThreePodium({super.key, required this.topThreeUsers});
  final List<LeaderboardUser?>? topThreeUsers;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // 2nd place
        _buildPodiumItem(
          rank: 2,
          height: 83.h,
          user: topThreeUsers?[1],
        ),
        // 1st place
        _buildPodiumItem(
          rank: 1,
          height: 113.h,
          user: topThreeUsers?[0],
          isFirst: true,
        ),
        // 3rd place
        _buildPodiumItem(
          rank: 3,
          height: 83.h,
          user: topThreeUsers?[2],
        ),
      ],
    );
  }

  Widget _buildPodiumItem({
    required int rank,
    required double height,
    LeaderboardUser? user,
    bool isFirst = false,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            if (isFirst)
              Positioned(
                top: -20.h,
                left: -16.w,
                child: Image.asset(Assets.iconsCrown),
              ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: rank == 1
                      ? ColorsManager.avatarBorder
                      : rank == 2
                          ? const Color(0xffA37B78)
                          : const Color(0xffE5D6D0),
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                radius: 33.5.r,
                backgroundImage: (
                  user?.photoUrl != null
                      ? NetworkImage(user!.photoUrl!)
                      : const AssetImage(Assets.imagesDefaultUser),
                ) as ImageProvider,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Container(
          decoration: BoxDecoration(
            color: ColorsManager.grey200,
            borderRadius: BorderRadius.circular(12.r),
          ),
          width: 100.w,
          height: height,
          child: Center(
            child: Text(
              '$rank',
              style: AppStyles.aldrichRegular64Black,
            ),
          ),
        ),
      ],
    );
  }
}
