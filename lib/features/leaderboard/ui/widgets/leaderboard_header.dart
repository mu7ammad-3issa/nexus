import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/colors_manager.dart';

class LeaderboardHeader extends StatefulWidget {
  const LeaderboardHeader({super.key});

  @override
  State<LeaderboardHeader> createState() => _LeaderboardHeaderState();
}

class _LeaderboardHeaderState extends State<LeaderboardHeader> {
  bool _isTodaySelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              context.pop();
            },
          ),
          const Spacer(flex: 60),
          _buildSegmentedTab(),
          const Spacer(flex: 100),
        ],
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
            },
          ),
          _buildTabOption(
            text: 'Weekly',
            isSelected: !_isTodaySelected,
            onTap: () {
              setState(() {
                _isTodaySelected = false;
              });
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
}
