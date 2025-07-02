import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../../core/constants/assets.dart';
import '../../../../../core/helpers/helper_methods/spacing.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/theming/colors_manager.dart';
import '../../../data/models/leaderboard_response_model.dart';

class RankingsListView extends StatelessWidget {
  const RankingsListView({super.key, required this.restOfUsersList});
  final List<LeaderboardUser?>? restOfUsersList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: context.only(
          top: 30.h,
          right: 19.w,
          left: 19.w,
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesRanksBackground),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(48.r)),
        ),
        child: ListView.builder(
          itemCount: restOfUsersList?.length,
          itemBuilder: (context, index) {
            final user = restOfUsersList?[index];
            return user == null
                ? const SizedBox.shrink()
                : _buildRankTile(
                    rank: user.rank,
                    name: user.fullName,
                    score: user.score,
                    image: user.photoUrl,
                  );
          },
        ),
      ),
    );
  }

  Widget _buildRankTile({
    required int rank,
    required String name,
    required int score,
    String? image,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Text(
            '$rank',
            style: AppStyles.aldrichRegular14Violet50.copyWith(
              color: ColorsManager.violet100,
            ),
          ),
          horizontalSpace(
            rank < 10 ? 26.w : 20.w,
          ),
          CircleAvatar(
            radius: 22.r,
            backgroundColor: Colors.white,
            backgroundImage: image != null
                ? CachedNetworkImageProvider(image)
                : const AssetImage(Assets.imagesDefaultUser) as ImageProvider,
          ),
          const Spacer(flex: 1),
          Text(
            name,
            style: AppStyles.aldrichRegular14Violet50,
          ),
          const Spacer(flex: 3),
          Text(
            score.toString(),
            style: AppStyles.aldrichRegular14Violet50,
          ),
        ],
      ),
    );
  }
}
