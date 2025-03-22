import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal(24.w),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              thickness: 1,
              color: ColorsManager.grey500,
            ),
          ),
          Padding(
            padding: context.horizontal(8.w),
            child: Text(
              "Or",
              style: AppStyles.aldrichRegular14Violet50.copyWith(
                color: ColorsManager.grey500,
              ),
            ),
          ),
          const Expanded(
            child: Divider(
              thickness: 1,
              color: ColorsManager.grey500,
            ),
          ),
        ],
      ),
    );
  }
}
