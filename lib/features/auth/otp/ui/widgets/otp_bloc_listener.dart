import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/features/auth/otp/logic/verify_otp_cubit.dart';
import 'package:nexus/features/auth/otp/logic/verify_otp_state.dart';

import '../../../../../core/helpers/helper_methods/show_dialog.dart';

class OtpBlocListener extends StatelessWidget {
  const OtpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyOtpCubit, VerifyOtpState>(
      listenWhen: (previous, current) {
        return current is verifyOtpLoading ||
            current is verifyOtpSuccess ||
            current is verifyOtpError;
      },
      listener: (context, state) {
        state.whenOrNull(
          verifyOtpLoading: () {
            showCustomLoadingIndicator(context);
          },
          verifyOtpSuccess: (data) {
            context.pop();
            successDialog(
              context,
              text: data,
              onPressed: () {
                context.pushNamedAndRemoveUntil(
                  Routes.resetPasswordScreen,
                  predicate: (route) =>
                      route.settings.name == Routes.loginScreen,
                );
              },
            );
          },
          verifyOtpError: (errorMessage) {
            context.pop();
            setupErrorState(context, errorMessage);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
