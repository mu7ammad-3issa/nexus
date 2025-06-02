import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class SubscriptionHeader extends StatelessWidget {
  const SubscriptionHeader(
      {super.key,
      required this.planTitle,
      required this.planImage,
      required this.selectedPlan});
  final String planTitle;
  final String planImage;
  final int selectedPlan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal(24.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorsManager.lightGray,
              size: 20,
            ),
            onPressed: () {
              context.pop();
            },
          ),
          Spacer(
            flex: selectedPlan != 0 ? 1 : 63,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(planImage),
              verticalSpace(22),
              Text(
                planTitle,
                style: AppStyles.aldrichRegular20Violet50,
              ),
              verticalSpace(7),
              selectedPlan != 0
                  ? Text(
                      'Remove Add & Unlock All Location',
                      style: AppStyles.aldrichRegular12Violet50.copyWith(
                        color: ColorsManager.violet200,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          Spacer(
            flex: selectedPlan != 0 ? 4 : 100,
          ),
        ],
      ),
    );
  }
}
