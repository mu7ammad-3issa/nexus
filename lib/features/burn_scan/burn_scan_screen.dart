import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/widgets/app_text_button.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class BurnScanScreen extends StatelessWidget {
  const BurnScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(40.h),
            const CustomHeader(text: ''),
            verticalSpace(119.h),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsManager.appColor.withOpacity(0.15),
                  ),
                ),
                Container(
                  width: 109,
                  height: 109,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsManager.appColor.withOpacity(0.38),
                  ),
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsManager.appColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.iconsScanInlined,
                      width: 45,
                      height: 45,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(42.h),
            Text(
              'Scan Model',
              style: AppStyles.aldrichRegular24white,
            ),
            verticalSpace(15),
            Text('Please show your burn hand to scan it',
                style: AppStyles.aldrichRegular14Violet50.copyWith(
                  color: ColorsManager.violet200,
                )),
            verticalSpace(122.h),
            AppTextButton(
              text: 'Get started',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
