import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/reset_password/data/models/reset_password_request_body.dart';
import 'package:nexus/features/auth/reset_password/logic/reset_password_cubit.dart';
import 'package:nexus/features/auth/reset_password/ui/widgets/reset_password_form.dart';

import '../../../../../core/widgets/app_text_button.dart';
import 'reset_password_bloc_listener.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key, required this.otp});
  final String otp;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(29),
          const CustomHeader(text: 'Reset Password'),
          verticalSpace(212),
          const ResetPasswordForm(),
          verticalSpace(68),
          AppTextButton(
            onPressed: () {
              validateThenResetPassword(context);
            },
            text: 'Confirm',
          ),
          const ResetPasswordBlocListener(),
        ],
      ),
    );
  }

  void validateThenResetPassword(BuildContext context) {
    if (context.read<ResetPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().emitResetPasswordStates(
            ResetPasswordRequestBody(
              otp: otp,
              newPassword:
                  context.read<ResetPasswordCubit>().newPasswordController.text,
            ),
          );
    }
  }
}
