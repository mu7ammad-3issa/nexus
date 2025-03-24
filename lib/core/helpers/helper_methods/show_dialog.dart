import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/app_constants.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/routes.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/auth/login/presentation/login_screen.dart';

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Constants.scaffoldBackGroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpace(40),
          SvgPicture.asset(
            Assets.imagesDialogLogo,
          ),
          verticalSpace(51),
          Text(
            'Password has been reset successfully',
            style: AppStyles.aldrichRegular14Violet50.copyWith(
              color: ColorsManager.lightGray,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(16),
          const Divider(
            color: ColorsManager.lightGrey300,
          ),
          TextButton(
            onPressed: () {
              context.replaceRoute(
                const LoginScreen(),
              );
            },
            child: Text(
              'OK',
              style: AppStyles.aldrichRegular16Violet100.copyWith(
                color: Constants.appColor,
              ),
            ),
          ),
          verticalSpace(24),
        ],
      ),
    ),
  );
}
