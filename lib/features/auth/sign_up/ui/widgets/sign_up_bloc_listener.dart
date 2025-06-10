import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:nexus/features/auth/sign_up/logic/sign_up_state.dart';

import '../../../../../core/helpers/helper_methods/show_dialog.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signUpLoading: () {
            showCustomLoadingIndicator(context);
          },
          signUpSuccess: (data) {
            context.pop();
            signUpSuccessDialog(context);
          },
          signUpError: (errorMessage) {
            context.pop();
            setupErrorState(context, errorMessage);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
