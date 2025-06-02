import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';

class PromotionalBanner extends StatelessWidget {
  const PromotionalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.all(16),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            Assets.imagesPromotionalBannerBg,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '"Prepare for the Unexpected – Learn Safety in VR!"',
              style: AppStyles.aldrichRegular14Violet50
                  .copyWith(color: Colors.white),
            ),
          ),
          horizontalSpace(32),
          Image.asset(Assets.imagesVirtualRealityHeadset),
        ],
      ),
    );
  }
}
