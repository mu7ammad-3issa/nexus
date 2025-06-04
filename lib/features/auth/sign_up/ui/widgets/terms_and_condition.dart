import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class TermsAndCondition extends StatefulWidget {
  final Function(bool) onChanged;

  const TermsAndCondition({super.key, required this.onChanged});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal(16.w),
      child: Row(
        children: [
          Checkbox(
            activeColor: ColorsManager.appColor,
            checkColor: Colors.white,
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value ?? false;
              });
              widget.onChanged(_isChecked);
            },
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'I agree to ',
                  style: AppStyles.aldrichRegular14Violet50,
                ),
                TextSpan(
                  text: 'Terms & Conditions',
                  style: AppStyles.aldrichRegular14Violet50.copyWith(
                    color: ColorsManager.appColor,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
