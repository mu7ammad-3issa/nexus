import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final bool? enabled;
  final bool? autoCorrect;
  final bool? enableSuggestions;
  final String? initialValue;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final Iterable<String>? autofillHints;
  final int? maxLines;
  final int? minLines;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.backgroundColor,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.controller,
    this.focusNode,
    this.autoFocus,
    this.enabled,
    this.autoCorrect,
    this.enableSuggestions,
    this.initialValue,
    this.onChanged,
    this.onFieldSubmitted,
    this.onSaved,
    this.autofillHints,
    this.maxLines,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
      autofocus: autoFocus ?? false,
      enabled: enabled ?? true,
      obscureText: isObscureText ?? false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autocorrect: autoCorrect ?? true,
      enableSuggestions: enableSuggestions ?? true,
      initialValue: initialValue,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      style: inputTextStyle ??
          AppStyles.aldrichRegular16Violet100.copyWith(
            color: Colors.white,
          ),
      autofillHints: autofillHints,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
                top: 16.h, bottom: 16.h, left: prefixIcon == null ? 16.w : 0),
        enabledBorder: enabledBorder ??
            buildOutlineInputBorder(color: ColorsManager.violet50),
        focusedBorder: focusedBorder ??
            buildOutlineInputBorder(color: ColorsManager.violet200),
        focusedErrorBorder: buildOutlineInputBorder(color: Colors.red),
        errorBorder: buildOutlineInputBorder(color: Colors.red),
        hintStyle: hintStyle ??
            AppStyles.aldrichRegular12Violet50.copyWith(
              color: ColorsManager.violet200,
            ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: prefixIcon,
              )
            : null,
        fillColor: backgroundColor ?? Colors.white,
        filled: true,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(8.r),
    );
  }
}
