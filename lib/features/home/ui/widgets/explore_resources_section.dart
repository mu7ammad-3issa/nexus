// lib/features/home/ui/widgets/explore_resources_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class ExploreResourcesSection extends StatelessWidget {
  const ExploreResourcesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.symmetric(horizontal: 16.r, vertical: 20.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: ColorsManager.appColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore Safety Resources',
                  style: AppStyles.aldrichRegular16Violet100
                      .copyWith(color: Colors.white),
                ),
                verticalSpace(16),
                Text(
                  'Helpful tips and guides for real-life emergency readiness.',
                  style: AppStyles.aldrichRegular12Violet50.copyWith(
                    color: ColorsManager.violet100,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              context.pushNamed(Routes.resourcesScreen);
            },
            child: Text(
              'Explore Now',
              style: AppStyles.aldrichRegular12Violet50.copyWith(
                color: ColorsManager.appColor,
                decoration: TextDecoration.underline,
                decorationColor: ColorsManager.appColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
