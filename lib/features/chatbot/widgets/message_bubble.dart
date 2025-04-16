import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: context.only(
          bottom: 16.h,
        ),
        padding: context.symmetric(
          vertical: 14.5.h,
          horizontal: 13.5.w,
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesMessageBackground,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.r),
            topRight: Radius.circular(8.r),
            bottomRight: Radius.circular(8.r),
          ),
        ),
        child: Text(
          message,
          style: AppStyles.aldrichRegular16Violet100.copyWith(
            color: ColorsManager.white,
          ),
        ),
      ),
    );
  }
}

class MessageBubbleForBot extends StatelessWidget {
  const MessageBubbleForBot({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: context.only(
          bottom: 16.h,
        ),
        padding: context.symmetric(
          vertical: 14.5.h,
          horizontal: 13.5.w,
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesMessageBackground,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.r),
            topRight: Radius.circular(8.r),
            bottomLeft: Radius.circular(8.r),
          ),
        ),
        child: Text(
          message,
          style: AppStyles.aldrichRegular16Violet100.copyWith(
            color: ColorsManager.white,
          ),
        ),
      ),
    );
  }
}

class SuggestionMessageBubble extends StatelessWidget {
  const SuggestionMessageBubble({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: context.only(
          bottom: 16.h,
        ),
        padding: context.symmetric(
          vertical: 14.5.h,
          horizontal: 13.5.w,
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesMessageBackground,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          message,
          style: AppStyles.aldrichRegular16Violet100.copyWith(
            color: ColorsManager.white,
          ),
        ),
      ),
    );
  }
}
