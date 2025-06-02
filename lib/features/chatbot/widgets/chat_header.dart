import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal(24.w),
      child: Row(
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
          const Spacer(
            flex: 69,
          ),
          Column(
            children: [
              Text(
                text,
                style: AppStyles.aldrichRegular20Violet50,
              ),
            ],
          ),
          const Spacer(
            flex: 100,
          ),
        ],
      ),
    );
  }
}
