import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/auth_text_form_field.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';
import 'package:nexus/features/auth/forgot_password/logic/forgot_password_cubit.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgotPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgotPasswordCubit>().formKey,
      child: Column(
        children: [
          Padding(
            padding: context.horizontal(24.w),
            child: AuthTextFormField(
              controller: context.read<ForgotPasswordCubit>().emailController,
              label: 'Email',
              hint: 'example@gmail.com',
              isPassword: false,
              icon: SvgPicture.asset(
                Assets.iconsEmail,
                height: 16,
                width: 16,
              ),
              validator: Validators.validateEmail,
            ),
          ),
        ],
      ),
    );
  }
}
