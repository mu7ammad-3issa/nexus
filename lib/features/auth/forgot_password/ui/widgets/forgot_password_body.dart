import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/forgot_password/logic/forgot_password_cubit.dart';
import 'package:nexus/features/auth/forgot_password/ui/widgets/forgot_password_form.dart';

import '../../../../../core/widgets/app_text_button.dart';
import 'forgot_password_bloc_listener.dart';

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
          const ForgotPasswordForm(),
          verticalSpace(167),
          AppTextButton(
            onPressed: () {
              validateThenSendOtp(context);
            },
            text: 'Continue',
          ),
          const ForgotPasswordBlocListener(),
        ],
      ),
    );
  }

  void validateThenSendOtp(BuildContext context) {
    if (context.read<ForgotPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ForgotPasswordCubit>().emitForgotPasswordStates();
    }
  }
}
