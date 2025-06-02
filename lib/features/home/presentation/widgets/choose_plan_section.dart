import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

import '../../../../core/routing/routes.dart';

class ChoosePlanSection extends StatelessWidget {
  const ChoosePlanSection({super.key});

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
            width: 208.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Choose Your Plan',
                      style: AppStyles.aldrichRegular16Violet100
                          .copyWith(color: Colors.white),
                    ),
                    horizontalSpace(7),
                    SvgPicture.asset(
                      Assets.iconsPlans,
                      width: 22,
                    ),
                  ],
                ),
                verticalSpace(16),
                Text(
                  'Select a plan to access premium emergency training and start your VR experience today',
                  style: AppStyles.aldrichRegular12Violet50.copyWith(
                    color: ColorsManager.violet100,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              context.pushNamed(
                Routes.subscriptionScreen,
              );
            },
            child: Text(
              'Show Plans',
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
