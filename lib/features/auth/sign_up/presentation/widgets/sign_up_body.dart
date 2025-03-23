import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/routes.dart';
import 'package:nexus/core/helpers/base_widgets/have_account_question_text.dart';
import 'package:nexus/core/helpers/base_widgets/or_divider.dart';
import 'package:nexus/core/helpers/base_widgets/social_media_buttons.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/features/auth/login/presentation/login_screen.dart';
import 'package:nexus/features/auth/sign_up/presentation/widgets/sign_up_form_with_button.dart';
import 'package:nexus/features/auth/sign_up/presentation/widgets/sign_up_header.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(24.h),
          const SignUpHeader(),
          verticalSpace(48.h),
          const SignUpFormWithButton(),
          verticalSpace(24.h),
          const OrDivider(),
          verticalSpace(24.h),
          const SocialMediaButtons(),
          verticalSpace(24.h),
          HaveAccountQuestionText(
            questionText: 'Already have an account?',
            clickableText: 'Sign In',
            onTap: () {
              context.navigate(const LoginScreen());
            },
          ),
          verticalSpace(34.h),
        ],
      ),
    );
  }
}
