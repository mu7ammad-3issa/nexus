import 'package:flutter/material.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign up",
      style: AppStyles.aldrichRegular24.copyWith(
        color: ColorsManager.violet50,
      ),
    );
  }
}
