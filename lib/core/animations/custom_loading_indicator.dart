import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 190.w,
            height: 190.h,
            child: Lottie.asset(
              Assets.lottieLoadingIndicator,
            ),
          ),
          verticalSpace(65),
          Text(
            text ?? 'Loading...',
            style: AppStyles.aldrichRegular24white.copyWith(
              color: ColorsManager.violet50,
            ),
          ),
        ],
      ),
    );
  }
}
