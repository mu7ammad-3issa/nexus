import 'package:flutter/material.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/reset_password/ui/widgets/reset_password_form_with_button.dart';

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
