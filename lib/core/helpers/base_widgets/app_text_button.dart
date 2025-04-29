import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/app_constants.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? disabledBackgroundColor;
  final Color? disabledTextColor;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final Widget? child; // Custom child widget (optional)
  final double? horizontalPadding;

  const AppTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.disabledBackgroundColor,
    this.disabledTextColor,
    this.width,
    this.height,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.child,
    this.horizontalPadding, // Custom child widget
  });

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = onPressed == null;

    return Padding(
      padding: context.horizontal(horizontalPadding ?? 24.w),
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 48.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: isDisabled
                ? disabledBackgroundColor ?? const Color(0xFFA3C8D3)
                : backgroundColor ?? Constants.appColor,
            disabledBackgroundColor:
                disabledBackgroundColor ?? const Color(0xFFA3C8D3),
            disabledForegroundColor: disabledTextColor ?? ColorsManager.white,
            padding: padding ?? context.vertical(12.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
              side: BorderSide(
                color: isDisabled
                    ? Colors.transparent
                    : borderColor ?? Constants.appColor,
              ),
            ),
          ),
          child: child ??
              Text(
                // Use custom child if provided, otherwise use text
                text,
                style: AppStyles.aldrichRegular16Violet100.copyWith(
                  color: isDisabled
                      ? disabledTextColor ?? ColorsManager.white
                      : textColor ?? ColorsManager.violet500,
                ),
              ),
        ),
      ),
    );
  }
}
