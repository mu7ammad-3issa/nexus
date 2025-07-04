import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/core/widgets/custom_header.dart';

import '../../../../core/constants/assets.dart';

// A simple model to hold the classification data.
// In a real app, this would come from your AI model's output.
class BurnData {
  final String classification;
  final String severity;
  final String confidence;
  final String description;
  final List<String> symptoms;
  final List<String> treatment;
  final String healingTime;
  final List<String> whenToSeekHelp;

  BurnData({
    required this.classification,
    required this.severity,
    required this.confidence,
    required this.description,
    required this.symptoms,
    required this.treatment,
    required this.healingTime,
    required this.whenToSeekHelp,
  });
}

class ClassificationScreen extends StatelessWidget {
  const ClassificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // --- MOCK DATA: Replace this with actual data from your model ---
    final burnData = BurnData(
      classification: 'Second-Degree Burn',
      severity: 'MODERATE TO SEVERE',
      confidence: '100%',
      description:
          'Second-degree burns affect both the outer layer and the underlying dermis. They cause pain, redness, swelling, and blistering.',
      symptoms: [
        'Deep redness and swelling',
        'Blisters that may open',
        'Wet or shiny appearance',
        'Severe pain and tenderness',
        'Fever if burn area is large',
      ],
      treatment: [
        'Cool the area with running water for 15–20 minutes',
        'Do NOT pop blisters',
        'Apply antibiotic ointment (if recommended)',
        'Cover with sterile, non-stick bandage',
        'Stay hydrated and monitor for infection',
      ],
      healingTime: 'Expected healing time: 2–3 weeks.',
      whenToSeekHelp: [
        'If the burn is larger than 3 inches',
        'Signs of infection (pus, fever, swelling)',
        'If the burn is on face, hands, feet, or joints',
      ],
    );
    // --- END OF MOCK DATA ---

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              Assets.imagesClassificationBgVector,
              fit: BoxFit.fitWidth,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: context.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(28),
                  CustomHeader(
                    padding: 0,
                    text: 'Classification:\n ${burnData.classification}',
                  ),
                  verticalSpace(35),
                  // Severity Tag
                  Center(
                    child: Container(
                      padding:
                          context.symmetric(horizontal: 14.w, vertical: 12.h),
                      decoration: BoxDecoration(
                        color: ColorsManager.mariGold,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        burnData.severity,
                        style: AppStyles.aldrichRegular14Violet50
                            .copyWith(color: ColorsManager.kohlDust),
                      ),
                    ),
                  ),
                  verticalSpace(35),
                  // Confidence and Warning
                  Text(
                    'Confidence: ${burnData.confidence}',
                    style: AppStyles.aldrichRegular14Violet50
                        .copyWith(color: ColorsManager.darkGray),
                  ),
                  verticalSpace(8),
                  Text(
                    'This burn may require medical attention depending on size and symptoms. Please monitor closely.',
                    style: AppStyles.aldrichRegular14Violet50
                        .copyWith(color: ColorsManager.mariGold),
                  ),
                  verticalSpace(30),
                  // Sections
                  _buildSection(
                    context,
                    title: '📝 Description',
                    content: Text(
                      burnData.description,
                      style: AppStyles.aldrichRegular14Violet50.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  _buildSection(
                    context,
                    title: '🩺 Symptoms',
                    content: _buildBulletPointList(burnData.symptoms),
                  ),
                  _buildSection(
                    context,
                    title: '🧯 How to Treat',
                    content: _buildBulletPointList(burnData.treatment),
                  ),
                  _buildSection(
                    context,
                    title: '⏳ Healing Time',
                    content: Text(
                      burnData.healingTime,
                      style: AppStyles.aldrichRegular14Violet50.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  _buildSection(
                    context,
                    title: '🚨 When to Seek Medical Help',
                    content: _buildBulletPointList(burnData.whenToSeekHelp),
                  ),
                  verticalSpace(40),
                  // Disclaimer
                  Center(
                    child: Text(
                      'This information is for guidance only. Always seek professional medical advice when needed.',
                      textAlign: TextAlign.center,
                      style: AppStyles.aldrichRegular12Violet50
                          .copyWith(color: ColorsManager.darkGray),
                    ),
                  ),
                  verticalSpace(40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget to build each section
  Widget _buildSection(BuildContext context,
      {required String title, required Widget content}) {
    return Padding(
      padding: context.only(bottom: 29.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.aldrichRegular16Violet100.copyWith(
              color: ColorsManager.green500,
            ),
          ),
          verticalSpace(16),
          content,
        ],
      ),
    );
  }

  // Helper widget to build a list of bullet points
  Widget _buildBulletPointList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('•  ',
                        style: AppStyles.aldrichRegular14Violet50
                            .copyWith(color: ColorsManager.violet50)),
                    Expanded(
                      child: Text(
                        item,
                        style: AppStyles.aldrichRegular14Violet50
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
