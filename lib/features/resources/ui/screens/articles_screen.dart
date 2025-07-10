// lib/features/resources/ui/screens/articles_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';

import '../widgets/article_card.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
      children: [
        const ArticleCard(
          title: 'Fire Escape Plan',
          description:
              'Learn how to act quickly and safely during a home fire emergency.',
        ),
        verticalSpace(16.h),
        const ArticleCard(
          title: 'Fire Escape Plan',
          description:
              'Learn how to act quickly and safely during a home fire emergency.',
        ),
        verticalSpace(16.h),
        const ArticleCard(
          title: 'Fire Escape Plan',
          description:
              'Learn how to act quickly and safely during a home fire emergency.',
        ),
      ],
    );
  }
}
