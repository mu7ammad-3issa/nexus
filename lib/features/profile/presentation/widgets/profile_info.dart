import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
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
              color: const Color(0xffFCD012),
              width: 2.w,
            ),
          ),
          child: CircleAvatar(
            radius: 65.r,
            backgroundColor: ColorsManager.violet50,
            child: Image.asset(Assets.imagesUserDefault),
          ),
        ),
        verticalSpace(20.h),
        Text(
          'Esraa Morsii',
          style: AppStyles.aldrichRegular24white.copyWith(
            color: ColorsManager.violet50,
          ),
        ),
        verticalSpace(25.h),
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
        verticalSpace(21.h),
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
