// lib/features/resources/ui/widgets/video_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

import '../../../../core/helpers/helper_methods/spacing.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String description;

  const VideoCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.kohlDust,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
                child: Container(
                  height: 150.h,
                  width: double.infinity,
                  color: const Color(0xff1F314B),
                  child: Center(
                    child: Image.asset(
                      Assets.imagesDefaultVideoImage,
                    ),
                  ),
                ),
              ),
              Container(
                width: 50.w,
                height: 50.h,
                decoration: const BoxDecoration(
                  color: ColorsManager.appColor,
                  shape: BoxShape.circle,
                ),
                child:
                    const Icon(Icons.play_arrow, color: Colors.black, size: 30),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.aldrichRegular16Violet100
                      .copyWith(color: Colors.white),
                ),
                verticalSpace(8),
                Text(
                  description,
                  style: AppStyles.aldrichRegular12Violet50
                      .copyWith(color: ColorsManager.violet100),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
