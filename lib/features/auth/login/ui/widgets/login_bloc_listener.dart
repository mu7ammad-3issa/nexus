import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/auth/login/logic/login_cubit.dart';

import '../../../../../core/animations/custom_loading_indicator.dart';
import '../../../../../core/routing/routes.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () => showDialog(
            context: context,
            builder: (context) => const Center(
              child: CustomLoadingIndicator(),
            ),
          ),
          loginSuccess: (loginResponse) {
            context.pop();
            context.pushReplacementNamed(Routes.appLayoutScreen);
          },
          loginError: (errorMessage) {
            setupErrorState(context, errorMessage);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, dynamic errorMessage) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ColorsManager.scaffoldBackGroundColor,
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          errorMessage ?? 'An error occurred',
          style: AppStyles.aldrichRegular14Violet50,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppStyles.aldrichRegular16Violet100.copyWith(
                color: ColorsManager.appColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
