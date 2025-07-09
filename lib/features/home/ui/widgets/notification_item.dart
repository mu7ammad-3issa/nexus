import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/app_styles.dart';

class NotificationItem extends StatelessWidget {
  final String imageUrl;

  final String description;
  final String time;
  final bool isCompleted;

  const NotificationItem({
    super.key,
    required this.imageUrl,
    required this.description,
    required this.time,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.symmetric(horizontal: 24.w, vertical: 8.h),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          width: 48,
          height: 48,
          child: ClipOval(
            child: SvgPicture.asset(imageUrl),
          ),
        ),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: description,
                style: AppStyles.aldrichRegular14Violet50,
              ),
            ],
          ),
        ),
        trailing: Text(
          time,
          style: AppStyles.aldrichRegular12Violet50,
        ),
      ),
    );
  }
}
