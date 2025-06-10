import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/widgets/have_account_question_text.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/sign_up/ui/widgets/sign_up_form.dart';
import 'package:nexus/features/auth/sign_up/ui/widgets/sign_up_header.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../logic/sign_up_cubit.dart';
import 'sign_up_bloc_listener.dart';

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
          verticalSpace(24),
          const SignUpHeader(),
          verticalSpace(48),
          const SignUpForm(),
          verticalSpace(16),
          AppTextButton(
            onPressed: () {
              validateThenSignUp(context);
            },
            text: 'Sign Up',
          ),
          verticalSpace(24),
          HaveAccountQuestionText(
            questionText: 'Already have an account? ',
            clickableText: 'Sign In',
            onTap: () {
              context.pushNamed(Routes.loginScreen);
            },
          ),
          verticalSpace(34),
          const SignUpBlocListener(),
        ],
      ),
    );
  }

  void validateThenSignUp(BuildContext context) {
    context.read<SignUpCubit>().isTermsValid =
        context.read<SignUpCubit>().isTermsChecked;

    if (context.read<SignUpCubit>().formkey.currentState!.validate() &&
        context.read<SignUpCubit>().isTermsValid) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
