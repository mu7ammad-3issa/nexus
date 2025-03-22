import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_widgets/have_account_question_text.dart';
import 'package:nexus/core/helpers/base_widgets/or_divider.dart';
import 'package:nexus/core/helpers/base_widgets/social_media_buttons.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/features/auth/login/presentation/widgets/login_form_with_button.dart';
import 'package:nexus/features/auth/login/presentation/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LoginHeader(),
              verticalSpace(50.h),
              const LoginFormWithButton(),
              verticalSpace(24.h),
              const OrDivider(),
              verticalSpace(24.h),
              const SocialMediaButtons(),
              verticalSpace(14.h),
              HaveAccountQuestionText(
                questionText: 'Don’t have an account? ',
                clickableText: 'Sign Up',
                onTap: () {},
              ),
              verticalSpace(54.h),
            ],
          ),
        ),
      ),
    );
  }
}
