import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/core/widgets/have_account_question_text.dart';
import 'package:nexus/core/widgets/or_divider.dart';
import 'package:nexus/core/widgets/social_media_buttons.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/login/ui/widgets/login_form_with_button.dart';
import 'package:nexus/features/auth/login/ui/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LoginHeader(),
              verticalSpace(24.h),
              const LoginFormWithButton(),
              verticalSpace(24.h),
              const OrDivider(),
              verticalSpace(24.h),
              const SocialMediaButtons(),
              verticalSpace(14.h),
              HaveAccountQuestionText(
                questionText: 'Don’t have an account? ',
                clickableText: 'Sign Up',
                onTap: () {
                  context.pushNamed(Routes.signUpScreen);
                },
              ),
              verticalSpace(54.h),
            ],
          ),
        ),
      ),
    );
  }
}
