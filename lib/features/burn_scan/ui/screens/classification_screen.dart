import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/core/widgets/custom_header.dart';

import '../../../../core/constants/assets.dart';
import '../../data/models/burn_analysis_response_model.dart';

class ClassificationScreen extends StatelessWidget {
  final BurnAnalysisResponseModel response;
  const ClassificationScreen({
    super.key,
    required this.response,
  });

  Color _parseColor(String colorString) {
    try {
      return Color(int.parse(colorString.replaceFirst('#', '0xFF')));
    } catch (e) {
      // Return a default color if parsing fails
      return ColorsManager.mariGold;
    }
  }

  @override
  Widget build(BuildContext context) {
    final burnDetails = response.result!;
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
                    text: 'Classification:\n ${burnDetails.classification}',
                  ),
                  verticalSpace(35),
                  // Severity Tag
                  Center(
                    child: Container(
                      padding:
                          context.symmetric(horizontal: 14.w, vertical: 12.h),
                      decoration: BoxDecoration(
                        color: _parseColor(burnDetails.color).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        burnDetails.severity.toUpperCase(),
                        style: AppStyles.aldrichRegular14Violet50
                            .copyWith(color: ColorsManager.kohlDust),
                      ),
                    ),
                  ),
                  verticalSpace(35),
                  Text(
                    'Confidence: ${burnDetails.confidence}',
                    style: AppStyles.aldrichRegular14Violet50
                        .copyWith(color: ColorsManager.darkGray),
                  ),
                  verticalSpace(30),
                  // Sections
                  _buildSection(
                    context,
                    title: '📝 Description',
                    content: Text(
                      burnDetails.description,
                      style: AppStyles.aldrichRegular14Violet50.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  _buildSection(
                    context,
                    title: '🤕 Symptoms',
                    content: _buildBulletPointList(burnDetails.symptoms),
                  ),
                  _buildSection(
                    context,
                    title: '🧯 How to Treat',
                    content: _buildBulletPointList(burnDetails.treatment),
                  ),
                  _buildSection(
                    context,
                    title: '⏳ Healing Time',
                    content: Text(
                      'Expected healing time: ${burnDetails.healingTime}',
                      style: AppStyles.aldrichRegular14Violet50.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  _buildSection(
                    context,
                    title: '🚨 When to Seek Medical Help',
                    content: Text(
                      burnDetails.whenToSeekHelp,
                      style: AppStyles.aldrichRegular14Violet50.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  verticalSpace(40),
                  // Disclaimer
                  Center(
                    child: Text(
                      response.disclaimer!,
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
