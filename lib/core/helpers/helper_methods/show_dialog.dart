import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/app_constants.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_extensions/context/routes.dart';
import 'package:nexus/core/helpers/base_widgets/app_text_button.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/auth/login/presentation/login_screen.dart';

void passwordResetSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    // barrierDismissible: false,
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

void confirmAccountDeleteDialog(BuildContext context) {
  showDialog(
    context: context,
    // barrierDismissible: false,
    builder: (context) => Dialog(
      backgroundColor: Constants.scaffoldBackGroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: context.symmetric(horizontal: 38.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(66.h),
            Text(
              'Delete Account',
              style: AppStyles.aldrichRegular20Violet50.copyWith(
                color: ColorsManager.deletionColor,
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(14.h),
            Text(
              'Are you sure you want to delete your account?',
              style: AppStyles.aldrichRegular16Violet100.copyWith(
                color: ColorsManager.violet50,
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(40.h),
            Row(
              children: [
                Expanded(
                  child: AppTextButton(
                    text: 'Cancel',
                    horizontalPadding: 0,
                    textColor: ColorsManager.violet50,
                    backgroundColor: Colors.transparent,
                    borderColor: ColorsManager.violet50,
                    onPressed: () {
                      context.pop(context);
                    },
                  ),
                ),
                horizontalSpace(33.w),
                Expanded(
                  child: AppTextButton(
                    text: 'Delete',
                    horizontalPadding: 0,
                    textColor: ColorsManager.violet500,
                    backgroundColor: ColorsManager.deletionColor,
                    borderColor: ColorsManager.deletionColor,
                    onPressed: () {
                      // Implement delete logic here
                      context.pop(context); // Dismiss dialog
                    },
                  ),
                ),
              ],
            ),
            verticalSpace(50.h),
          ],
        ),
      ),
    ),
  );
}
