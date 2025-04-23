import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/app_text_button.dart';
import 'package:nexus/core/helpers/base_widgets/custom_header.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // background image
            Image.asset(
              Assets.imagesAboutUsBackground,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            SingleChildScrollView(
              child: Padding(
                padding: context.horizontal(24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(40.h),
                    const FractionallySizedBox(
                      widthFactor: 1.15,
                      child: CustomHeader(text: 'About Us'),
                    ),
                    verticalSpace(40.h),
                    // our mission section
                    Text(
                      'Our Mission',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.green500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    verticalSpace(9),
                    Text(
                      'To revolutionize emergency preparedness by making life-saving training accessible, engaging, and effective through virtual reality.',
                      style: AppStyles.aldrichRegular14Violet50,
                    ),
                    verticalSpace(22.h),
                    // our vision section
                    Text(
                      'Our Vision',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.green500,
                      ),
                    ),
                    verticalSpace(9),
                    Text(
                      'A world where everyone is equipped with the confidence and knowledge to handle emergencies calmly and effectively.',
                      style: AppStyles.aldrichRegular14Violet50,
                    ),
                    verticalSpace(22.h),
                    // our values section
                    Text(
                      'Why Choose Nexues?',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.green500,
                      ),
                    ),
                    verticalSpace(9),
                    Text(
                      'We combine the power of VR and AI to create a learning experience that prepares you for real-life emergencies.',
                      style: AppStyles.aldrichRegular14Violet50,
                    ),
                    verticalSpace(16),
                    const BulletPoint(
                      text:
                          ' Immersive VR Training – Realistic emergency scenarios',
                    ),
                    verticalSpace(6),
                    const BulletPoint(
                      text:
                          ' AI-Powered Assistance – Instant guidance & feedback',
                    ),
                    verticalSpace(6),
                    const BulletPoint(
                      text:
                          ' Personalized Learning – Track progress & earn certifications',
                    ),
                    verticalSpace(6),
                    const BulletPoint(
                      text:
                          ' Community & Support – Helping users stay prepared together',
                    ),
                    verticalSpace(22.h),
                    // our team section
                    Text(
                      'MeetOur Team',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.green500,
                      ),
                    ),
                    verticalSpace(9),
                    SizedBox(
                      child: Image.asset(
                        Assets.imagesNexusTeam,
                      ),
                    ),
                    verticalSpace(40.h),
                    FractionallySizedBox(
                      widthFactor: 1.15,
                      child: AppTextButton(
                        text: 'Contact Us',
                        onPressed: () {},
                      ),
                    ),
                    verticalSpace(35.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• ',
          style: AppStyles.aldrichRegular14Violet50,
        ),
        Expanded(
          child: Text(
            text,
            style: AppStyles.aldrichRegular14Violet50,
          ),
        ),
      ],
    );
  }
}
