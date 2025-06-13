import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/features/auth/reset_password/logic/reset_password_cubit.dart';
import 'package:nexus/features/auth/reset_password/logic/reset_password_state.dart';

import '../../../../../core/helpers/helper_methods/show_dialog.dart';

class ResetPasswordBlocListener extends StatelessWidget {
  const ResetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          current is ResetPasswordLoading ||
          current is ResetPasswordSuccess ||
          current is ResetPasswordError,
      listener: (context, state) {
        state.whenOrNull(
          resetPasswordLoading: () {
            showCustomLoadingIndicator(context);
          },
          resetPasswordSuccess: (data) {
            context.pop();
            successDialog(
              context,
              text: data,
              buttonText: 'Ok',
              onPressed: () {
                context.pushNamedAndRemoveUntil(
                  Routes.loginScreen,
                  predicate: (route) =>
                      route.settings.name == Routes.loginScreen,
                );
              },
            );
          },
          resetPasswordError: (errorMessage) {
            context.pop();
            setupErrorState(context, errorMessage);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
