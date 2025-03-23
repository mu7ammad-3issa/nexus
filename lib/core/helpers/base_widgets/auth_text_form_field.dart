import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class AuthTextFormField extends StatefulWidget {
  const AuthTextFormField({
    super.key,
    required this.label,
    required this.icon,
    required this.isPassword,
    required this.validator,
    required this.onSaved,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.controller,
    this.onChanged,
    this.focusNode,
    this.textInputAction,
    this.hint,
  });

  final String label;
  final String? hint;
  final Widget icon;
  final bool isPassword;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final void Function(String?) onSaved;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  var isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.only(bottom: 10),
          child: Text(
            widget.label,
            style: AppStyles.aldrichRegular16Violet100.copyWith(
              color: ColorsManager.lightGrey300,
            ),
          ),
        ),
        TextFormField(
          controller: widget.controller,
          focusNode: widget.focusNode,
          textInputAction: widget.textInputAction,
          autofillHints: widget.keyboardType == TextInputType.emailAddress
              ? [AutofillHints.email]
              : widget.isPassword
                  ? [AutofillHints.password]
                  : null,
          decoration: InputDecoration(
            contentPadding: context.horizontal(16.h),
            hintText: widget.hint,
            hintStyle: AppStyles.aldrichRegular12Violet50.copyWith(
              color: ColorsManager.grey200,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide:
                  BorderSide(color: ColorsManager.grey200, width: 1.0.r),
            ),
            errorStyle: AppStyles.aldrichRegular14Violet50.copyWith(
              color: Colors.red,
            ),
            prefixIcon: Padding(
              padding:
                  context.only(left: 16.w, top: 16.h, bottom: 16.h, right: 8.w),
              child: widget.icon,
            ),
            prefixIconConstraints:
                BoxConstraints(minHeight: 24.h, minWidth: 24.w),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: toggleVisibility,
                    icon: isPasswordVisible
                        ? const Icon(
                            FontAwesomeIcons.eye,
                            color: ColorsManager.grey500,
                            size: 12,
                          )
                        : const Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: ColorsManager.grey500,
                            size: 12,
                          ),
                  )
                : null,
          ),
          style: AppStyles.aldrichRegular14Violet50.copyWith(
            color: ColorsManager.grey200,
          ),
          validator: widget.validator,
          obscureText: widget.isPassword && !isPasswordVisible,
          onSaved: widget.onSaved,
          onChanged: widget.onChanged,
          textCapitalization: widget.textCapitalization,
          keyboardType: widget.keyboardType,
        ),
      ],
    );
  }

  void toggleVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }
}
