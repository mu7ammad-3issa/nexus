// lib/features/resources/ui/screens/resources_screen.dart
import 'package:flutter/material.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/features/resources/ui/screens/articles_screen.dart';
import 'package:nexus/features/resources/ui/screens/videos_screen.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              verticalSpace(40),
              const CustomHeader(text: 'Explore Resources'),
              verticalSpace(24),
              TabBar(
                indicatorColor: ColorsManager.appColor,
                indicatorWeight: 3.0,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: ColorsManager.appColor,
                unselectedLabelColor: ColorsManager.lightGray.withOpacity(0.7),
                labelStyle: AppStyles.aldrichRegular16Violet100,
                tabs: const [
                  Tab(text: 'Articles'),
                  Tab(text: 'Videos'),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    ArticlesScreen(),
                    VideosScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
