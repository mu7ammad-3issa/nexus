import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/auth/forgot_password/logic/forgot_password_cubit.dart';

class ResendOtpText extends StatelessWidget {
  const ResendOtpText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Didn't receive the code? ",
        style: AppStyles.aldrichRegular14Violet50.copyWith(
          color: ColorsManager.lightGray,
        ),
        children: [
          TextSpan(
            text: 'Resend',
            style: AppStyles.aldrichRegular14Violet50.copyWith(
              color: ColorsManager.appColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.read<ForgotPasswordCubit>().emitForgotPasswordStates();
              },
          ),
        ],
      ),
    );
  }
}
