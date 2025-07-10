// lib/features/home/ui/widgets/home_screen_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/home/ui/widgets/choose_plan_section.dart';
import 'package:nexus/features/home/ui/widgets/download_game_section.dart';
import 'package:nexus/features/home/ui/widgets/promotional_banner.dart';
import 'package:nexus/features/home/ui/widgets/welcome_header.dart';

import 'explore_resources_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal(24.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(33),
            const WelcomeHeader(),
            verticalSpace(33),
            const PromotionalBanner(),
            verticalSpace(48),
            const ChoosePlanSection(),
            verticalSpace(22),
            const DownloadGameSection(),
            verticalSpace(22),
            const ExploreResourcesSection(),
            verticalSpace(33),
          ],
        ),
      ),
    );
  }
}
