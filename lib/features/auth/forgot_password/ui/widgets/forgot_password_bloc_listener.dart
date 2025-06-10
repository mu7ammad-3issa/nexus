import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/features/auth/forgot_password/logic/forgot_password_cubit.dart';

import '../../../../../core/helpers/helper_methods/show_dialog.dart';
import '../../logic/forgot_password_state.dart';

class ForgotPasswordBlocListener extends StatelessWidget {
  const ForgotPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listenWhen: (previous, current) {
        return current is ForgotPasswordLoading ||
            current is ForgotPasswordSuccess ||
            current is ForgotPasswordError;
      },
      listener: (context, state) {
        state.whenOrNull(
          forgotPasswordLoading: () {
            showCustomLoadingIndicator(context);
          },
          forgotPasswordSuccess: (data) {
            context.pop();
            successDialog(
              context,
              text: data,
              onPressed: () {
                context.pushReplacementNamed(Routes.otpScreen);
              },
            );
          },
          forgotPasswordError: (errorMessage) {
            context.pop();
            setupErrorState(context, errorMessage);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
