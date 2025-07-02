import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/constants/assets.dart';
import '../../../../../core/helpers/helper_methods/spacing.dart';

class RankingsShimmerLoading extends StatelessWidget {
  const RankingsShimmerLoading({super.key});

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
          itemCount: 7,
          itemBuilder: (context, index) {
            return const _ShimmerRankTile();
          },
        ),
      ),
    );
  }
}

class _ShimmerRankTile extends StatelessWidget {
  const _ShimmerRankTile();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.only(bottom: 26.h),
      child: Row(
        children: [
          // Rank number placeholder
          const ShimmerPlaceholder(width: 20, height: 20),
          horizontalSpace(26.w),
          // Avatar placeholder
          const ShimmerPlaceholder(width: 44, height: 44, isCircle: true),
          horizontalSpace(16.w),
          // Name placeholder
          const ShimmerPlaceholder(width: 120, height: 20),
          const Spacer(),
          // Score placeholder
          const ShimmerPlaceholder(width: 60, height: 20),
        ],
      ),
    );
  }
}

class ShimmerPlaceholder extends StatelessWidget {
  final double? width;
  final double? height;
  final bool isCircle;
  final double borderRadius;

  const ShimmerPlaceholder({
    super.key,
    this.width,
    this.height,
    this.isCircle = false,
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.lightGrayShimmer,
      highlightColor: Colors.white,
      child: Container(
        width: width?.w,
        height: height?.h,
        decoration: BoxDecoration(
          color: Colors.grey.shade900.withOpacity(0.3),
          borderRadius: isCircle ? null : BorderRadius.circular(borderRadius.r),
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        ),
      ),
    );
  }
}
