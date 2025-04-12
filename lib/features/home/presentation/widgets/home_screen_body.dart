import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/features/home/presentation/widgets/choose_plan_section.dart';
import 'package:nexus/features/home/presentation/widgets/download_game_section.dart';
import 'package:nexus/features/home/presentation/widgets/promotional_banner.dart';
import 'package:nexus/features/home/presentation/widgets/welcome_header.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal(24.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(33.h),
            const WelcomeHeader(),
            verticalSpace(33.h),
            const PromotionalBanner(),
            verticalSpace(48.h),
            const ChoosePlanSection(),
            verticalSpace(22.h),
            const DownloadGameSection(),
            verticalSpace(33.h),
          ],
        ),
      ),
    );
  }
}
