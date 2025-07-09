import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/features/profile/ui/widgets/my_certificate_card.dart';

class MyCertificate extends StatelessWidget {
  const MyCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assets.imagesMyCertificateBackground,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpace(40.h),
                  const CustomHeader(text: 'My Certificates'),
                  verticalSpace(55.h),
                  Padding(
                    padding: context.horizontal(24.w),
                    child: Text(
                      'You’re doing amazing!🎉\nThis certificate is proof of your hard work and dedication! 🎉 Keep going—you’re making a difference! 🚀🔥',
                      style: AppStyles.aldrichRegular14Violet50,
                    ),
                  ),
                  verticalSpace(50.h),
                  Padding(
                    padding: context.horizontal(24.w),
                    child: const MyCertificateCard(),
                  ),
                  verticalSpace(150.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
