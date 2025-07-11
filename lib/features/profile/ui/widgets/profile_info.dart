import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorsManager.avatarBorder,
              width: 2.w,
            ),
          ),
          child: ClipOval(
            child: CircleAvatar(
              radius: 65.r,
              backgroundColor: ColorsManager.violet50,
              child: Image.asset(Assets.imagesDefaultUser),
            ),
          ),
        ),
        verticalSpace(20),
        Text(
          'Muhammad Issa',
          style: AppStyles.aldrichRegular24white.copyWith(
            color: ColorsManager.violet50,
          ),
        ),
        verticalSpace(25),
        RichText(
          text: TextSpan(
            text: 'Subscription: ',
            style: AppStyles.aldrichRegular14Violet50,
            children: [
              TextSpan(
                text: 'Premium',
                style: AppStyles.aldrichRegular14Violet50.copyWith(
                  color: ColorsManager.avatarBorder,
                ),
              ),
            ],
          ),
        ),
        verticalSpace(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ID : NXU48231',
              style: AppStyles.aldrichRegular14Violet50.copyWith(
                color: Colors.white.withOpacity(0.44),
              ),
            ),
            horizontalSpace(12),
            SizedBox(
              height: 28.h,
              child: OutlinedButton(
                onPressed: () {
                  Clipboard.setData(const ClipboardData(text: 'NXU48231'));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'ID Copied to Clipboard!',
                        style: AppStyles.aldrichRegular14Violet50,
                      ),
                      backgroundColor: ColorsManager.violet200,
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: ColorsManager.green500),
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Text(
                  'Copy',
                  style: AppStyles.aldrichRegular12Violet50
                      .copyWith(color: ColorsManager.green500),
                ),
              ),
            )
          ],
        ),
        verticalSpace(21),
        Padding(
          padding: context.symmetric(horizontal: 24.w),
          child: LinearProgressIndicator(
            value: 0.3,
            backgroundColor: ColorsManager.violet50,
            valueColor:
                const AlwaysStoppedAnimation<Color>(ColorsManager.green500),
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
            minHeight: 5.h,
          ),
        ),
        verticalSpace(21.h),
        Text(
          'Training Progress: 60%',
          style: AppStyles.aldrichRegular14Violet50,
        ),
      ],
    );
  }
}
