import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 84.h,
          left: 147.w,
          child: Text(
            "Sign in",
            style: AppStyles.aldrichRegular24.copyWith(
              color: ColorsManager.violet50,
            ),
          ),
        ),
        Image.asset(
          Assets.imagesSignInWavyLine,
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
