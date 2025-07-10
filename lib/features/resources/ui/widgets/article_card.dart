// lib/features/resources/ui/widgets/article_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class ArticleCard extends StatelessWidget {
  final String title;
  final String description;

  const ArticleCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: ColorsManager.kohlDust,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.aldrichRegular16Violet100
                      .copyWith(color: Colors.white),
                ),
                verticalSpace(8),
                Text(
                  description,
                  style: AppStyles.aldrichRegular12Violet50
                      .copyWith(color: ColorsManager.violet100),
                ),
              ],
            ),
          ),
          horizontalSpace(16),
          Image.asset(Assets.imagesFireEscapePlan),
        ],
      ),
    );
  }
}
