// lib/features/resources/ui/screens/videos_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';

import '../widgets/video_card.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
      children: [
        const VideoCard(
          title: 'Fire Escape Plan',
          description:
              'Watch this video to learn how to prepare for a home fire.',
        ),
        verticalSpace(16.h),
        const VideoCard(
          title: 'Fire Escape Plan',
          description:
              'Watch this video to learn how to prepare for a home fire.',
        ),
      ],
    );
  }
}
