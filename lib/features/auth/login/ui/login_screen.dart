import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/core/widgets/have_account_question_text.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/login/ui/widgets/login_header.dart';

import '../../../../core/widgets/app_text_button.dart';
import '../logic/login_cubit.dart';
import 'widgets/login_bloc_listener.dart';
import 'widgets/login_form.dart';

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
              verticalSpace(24),
              const LoginForm(),
              verticalSpace(24),
              AppTextButton(
                onPressed: () => validateThenLogin(context),
                text: 'Sign in',
              ),
              verticalSpace(14),
              HaveAccountQuestionText(
                questionText: 'Don’t have an account? ',
                clickableText: 'Sign Up',
                onTap: () {
                  context.pushNamed(Routes.signUpScreen);
                },
              ),
              verticalSpace(54),
              const LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
