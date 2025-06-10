import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/core/widgets/app_text_button.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

import '../../animations/custom_loading_indicator.dart';

void passwordResetSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    // barrierDismissible: false,
    builder: (context) => Dialog(
      backgroundColor: ColorsManager.scaffoldBackGroundColor,
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
              context.pushReplacementNamed(
                Routes.loginScreen,
              );
            },
            child: Text(
              'OK',
              style: AppStyles.aldrichRegular16Violet100.copyWith(
                color: ColorsManager.appColor,
              ),
            ),
          ),
          verticalSpace(24),
        ],
      ),
    ),
  );
}

void signUpSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      backgroundColor: ColorsManager.scaffoldBackGroundColor,
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
            'Congratulations, you have signed up successfully!',
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
              context.pushReplacementNamed(
                Routes.loginScreen,
              );
            },
            child: Text(
              'Continue',
              style: AppStyles.aldrichRegular16Violet100.copyWith(
                color: ColorsManager.appColor,
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
      backgroundColor: ColorsManager.scaffoldBackGroundColor,
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
                      context.pop();
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
                      context.pop(); // Dismiss dialog
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

void confirmLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: ColorsManager.scaffoldBackGroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: context.symmetric(horizontal: 42.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(63.h),
            Image.asset(
              Assets.imagesLogoutDialog,
              width: 131.w,
              height: 79.h,
            ),
            verticalSpace(35.h),
            Text(
              'Oh no! You’re leaving...',
              style: AppStyles.aldrichRegular20Violet50,
              textAlign: TextAlign.center,
            ),
            verticalSpace(30.h),
            SizedBox(
              height: 48.h,
              child: AppTextButton(
                text: 'Naah,Just kidding',
                horizontalPadding: 0,
                textColor: ColorsManager.violet500,
                backgroundColor: ColorsManager.green500,
                onPressed: () {
                  context.pop(); // Dismiss dialog
                },
              ),
            ),
            verticalSpace(30.h),
            SizedBox(
              height: 48.h,
              child: AppTextButton(
                text: 'Yes, Log Me Out',
                horizontalPadding: 0,
                textColor: ColorsManager.green500,
                backgroundColor: ColorsManager.violet500,
                borderColor: ColorsManager.green500,
                onPressed: () {
                  // Implement logout logic here
                },
              ),
            ),
            verticalSpace(46.h),
          ],
        ),
      ),
    ),
  );
}

void setupErrorState(BuildContext context, dynamic errorMessage) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: ColorsManager.scaffoldBackGroundColor,
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        errorMessage ?? 'An error occurred',
        style: AppStyles.aldrichRegular14Violet50,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: AppStyles.aldrichRegular16Violet100.copyWith(
              color: ColorsManager.appColor,
            ),
          ),
        ),
      ],
    ),
  );
}

void showCustomLoadingIndicator(BuildContext context, {String? text}) {
  showDialog(
    context: context,
    builder: (context) => Center(
      child: CustomLoadingIndicator(
        text: text,
      ),
    ),
  );
}
