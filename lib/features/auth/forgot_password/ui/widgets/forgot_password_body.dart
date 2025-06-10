import 'package:flutter/material.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/forgot_password/ui/widgets/forgot_password_form_with_button.dart';

@override
class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(33),
          const CustomHeader(
            text: 'Forgot Password',
          ),
          verticalSpace(210),
          const ForgotPasswordFormWithButton(),
        ],
      ),
    );
  }
}
