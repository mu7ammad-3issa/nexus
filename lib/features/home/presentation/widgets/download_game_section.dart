import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class DownloadGameSection extends StatelessWidget {
  const DownloadGameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.symmetric(horizontal: 16.r, vertical: 20.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: ColorsManager.appColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 216.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Get the Nexues Game',
                      style: AppStyles.aldrichRegular16Violet100
                          .copyWith(color: Colors.white),
                    ),
                    horizontalSpace(7),
                    SvgPicture.asset(
                      Assets.iconsDownload,
                    ),
                  ],
                ),
                verticalSpace(16),
                Text(
                  'Download the app to start your VR emergency training and prepare for any situation on the go',
                  style: AppStyles.aldrichRegular12Violet50.copyWith(
                    color: ColorsManager.violet100,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Download!',
              style: AppStyles.aldrichRegular12Violet50.copyWith(
                color: ColorsManager.appColor,
                decoration: TextDecoration.underline,
                decorationColor: ColorsManager.appColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
