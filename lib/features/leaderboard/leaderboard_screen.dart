import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  bool _isTodaySelected = true;

  // Daily leaderboard data
  final List<Map<String, dynamic>> _dailyData = [
    {
      'rank': 1,
      'name': 'Ali Edward',
      'score': 6321,
      'image': 'assets/images/profile1.png'
    },
    {
      'rank': 2,
      'name': 'Sara Jones',
      'score': 5987,
      'image': 'assets/images/profile2.png'
    },
    {
      'rank': 3,
      'name': 'Mike Smith',
      'score': 5762,
      'image': 'assets/images/profile3.png'
    },
    {
      'rank': 4,
      'name': 'Emma Brown',
      'score': 5355,
      'image': 'assets/images/profile4.png'
    },
    {
      'rank': 5,
      'name': 'James Lee',
      'score': 4877,
      'image': 'assets/images/profile5.png'
    },
    {
      'rank': 6,
      'name': 'Olivia Davis',
      'score': 4444,
      'image': 'assets/images/profile6.png'
    },
    {
      'rank': 7,
      'name': 'Liam Wilson',
      'score': 3347,
      'image': 'assets/images/profile7.png'
    },
    {
      'rank': 8,
      'name': 'Sophia Clark',
      'score': 3333,
      'image': 'assets/images/profile8.png'
    },
    {
      'rank': 9,
      'name': 'Noah Taylor',
      'score': 2387,
      'image': 'assets/images/profile9.png'
    },
    {
      'rank': 10,
      'name': 'Ava Martinez',
      'score': 1843,
      'image': 'assets/images/profile10.png'
    },
  ];

  // Weekly leaderboard data (different scores and names for variety)
  final List<Map<String, dynamic>> _weeklyData = [
    {
      'rank': 1,
      'name': 'Sara Jones',
      'score': 12543,
      'image': 'assets/images/profile2.png'
    },
    {
      'rank': 2,
      'name': 'Ali Edward',
      'score': 11987,
      'image': 'assets/images/profile1.png'
    },
    {
      'rank': 3,
      'name': 'Emma Brown',
      'score': 10762,
      'image': 'assets/images/profile4.png'
    },
    {
      'rank': 4,
      'name': 'Mike Smith',
      'score': 9535,
      'image': 'assets/images/profile3.png'
    },
    {
      'rank': 5,
      'name': 'Olivia Davis',
      'score': 8877,
      'image': 'assets/images/profile6.png'
    },
    {
      'rank': 6,
      'name': 'James Lee',
      'score': 7444,
      'image': 'assets/images/profile5.png'
    },
    {
      'rank': 7,
      'name': 'Sophia Clark',
      'score': 6347,
      'image': 'assets/images/profile8.png'
    },
    {
      'rank': 8,
      'name': 'Liam Wilson',
      'score': 5333,
      'image': 'assets/images/profile7.png'
    },
    {
      'rank': 9,
      'name': 'Ava Martinez',
      'score': 4387,
      'image': 'assets/images/profile10.png'
    },
    {
      'rank': 10,
      'name': 'Noah Taylor',
      'score': 3843,
      'image': 'assets/images/profile9.png'
    },
  ];

  // Getter for current data based on tab selection
  List<Map<String, dynamic>> get _currentData =>
      _isTodaySelected ? _dailyData : _weeklyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(20.h),
            // Leaderboard header
            Padding(
              padding: context.horizontal(24.w),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: ColorsManager.lightGray,
                      size: 20,
                    ),
                    onPressed: () {
                      context.pop(); // Fixed navigation
                    },
                  ),
                  const Spacer(flex: 60),
                  _buildSegmentedTab(),
                  const Spacer(flex: 100),
                ],
              ),
            ),
            verticalSpace(24.h),
            // Podium section
            _currentData.isEmpty ? const SizedBox() : _buildPodium(),
            // List for remaining ranks
            Expanded(
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
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(48.r)),
                ),
                child: _currentData.length < 4
                    ? const Center(child: Text('Not enough data'))
                    : ListView.builder(
                        itemCount: _currentData.length - 3,
                        itemBuilder: (context, index) {
                          final rank = index + 4;
                          final user = _currentData[rank - 1];
                          return _buildRankTile(
                            rank: rank,
                            name: user['name'],
                            score: user['score'],
                            image: user['image'],
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegmentedTab() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        children: [
          _buildTabOption(
            text: 'Daily',
            isSelected: _isTodaySelected,
            onTap: () {
              setState(() {
                _isTodaySelected = true;
              });
              SystemSound.play(SystemSoundType.alert);
            },
          ),
          _buildTabOption(
            text: 'Weekly',
            isSelected: !_isTodaySelected,
            onTap: () {
              setState(() {
                _isTodaySelected = false;
              });
              SystemSound.play(SystemSoundType.alert);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTabOption({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: context.symmetric(horizontal: 25.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.appColor : Colors.transparent,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Text(
          text,
          style: AppStyles.aldrichRegular14Violet50.copyWith(
            color: ColorsManager.violet500,
          ),
        ),
      ),
    );
  }

  Widget _buildPodium() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // 2nd place
        _buildPodiumItem(
          rank: 2,
          height: 83.h,
          user: _currentData[1],
        ),
        // 1st place
        _buildPodiumItem(
          rank: 1,
          height: 113.h,
          user: _currentData[0],
          isFirst: true,
        ),
        // 3rd place
        _buildPodiumItem(
          rank: 3,
          height: 83.h,
          user: _currentData[2],
        ),
      ],
    );
  }

  Widget _buildPodiumItem({
    required int rank,
    required double height,
    required Map<String, dynamic> user,
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
                backgroundImage: AssetImage(user['image']),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
        verticalSpace(8.h),
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

  Widget _buildRankTile({
    required int rank,
    required String name,
    required int score,
    required String image,
  }) {
    return Padding(
      padding: context.only(bottom: 26.h),
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
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.white,
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
