import 'package:flutter/material.dart';
import 'package:nexus/core/helpers/base_widgets/custom_header.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/features/auth/reset_password/presentation/widgets/reset_password_form_with_button.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(29),
          const CustomHeader(text: 'Reset Password'),
          verticalSpace(212),
          const ResetPasswordFormWithButton(
            email: '',
            otp: '',
          ),
        ],
      ),
    );
  }
}
