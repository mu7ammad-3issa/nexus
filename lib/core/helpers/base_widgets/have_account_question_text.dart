import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nexus/core/constants/app_constants.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class HaveAccountQuestionText extends StatelessWidget {
  final String questionText;
  final String clickableText;
  final void Function() onTap;

  const HaveAccountQuestionText({
    super.key,
    required this.questionText,
    required this.clickableText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: questionText,
            style: AppStyles.aldrichRegular14Violet50.copyWith(
              color: ColorsManager.lightGray,
            ),
          ),
          TextSpan(
            text: clickableText,
            style: AppStyles.aldrichRegular14Violet50.copyWith(
              color: Constants.appColor,
              decoration: TextDecoration.underline,
              decorationColor: Constants.appColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
