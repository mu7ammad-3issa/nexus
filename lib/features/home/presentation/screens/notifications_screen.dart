import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/home/presentation/widgets/notification_item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(40.h),
            const CustomHeader(text: 'Notifications'),
            verticalSpace(40.h),
            Expanded(
              child: ListView(
                children: const [
                  NotificationItem(
                    imageUrl: Assets.iconsCongratulations,
                    description:
                        'You’ve successfully completed Fire Safety Training',
                    time: '14:00',
                  ),
                  NotificationItem(
                    imageUrl: Assets.iconsDownload,
                    description:
                        'Your Fire Safety certificate is ready for download',
                    time: '14:10',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
