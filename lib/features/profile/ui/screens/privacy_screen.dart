import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background image
            Image.asset(
              Assets.imagesPrivacyBackground,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            // Main content
            SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpace(40.h),
                  const CustomHeader(
                    text: 'Privacy & Policy',
                  ),
                  verticalSpace(60.h),
                  Padding(
                    padding: context.horizontal(25.w),
                    child: Text(
                      'We value your privacy and only request personal information when necessary to provide our services effectively. All data is collected transparently, with your full knowledge and consent, and we explain how it will be used.\n\nWe retain your information only for as long as needed to deliver the requested services. Your data is safeguarded using secure methods to prevent unauthorized access, loss, or misuse..\n\nWe do not share your personal information with anyone, except when legally required. Your trust is important to us, and we are committed to protecting your privacy at every step.',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.violet50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
