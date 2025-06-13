import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/auth_text_form_field.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';

import '../../logic/reset_password_cubit.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ResetPasswordCubit>().formKey,
      child: Column(
        children: [
          Padding(
            padding: context.horizontal(24.w),
            child: AuthTextFormField(
              controller:
                  context.read<ResetPasswordCubit>().newPasswordController,
              label: 'Password',
              hint: 'At least 8 characters',
              isPassword: true,
              icon: SvgPicture.asset(
                Assets.iconsPassword,
                height: 16,
                width: 16,
              ),
              validator: Validators.validatePassword,
              onSaved: (value) {},
            ),
          ),
          verticalSpace(25),
          Padding(
            padding: context.horizontal(24.w),
            child: AuthTextFormField(
              controller:
                  context.read<ResetPasswordCubit>().confirmPasswordController,
              label: 'Confirm Password',
              hint: 'Re-enter your password',
              isPassword: true,
              icon: SvgPicture.asset(
                Assets.iconsPassword,
                height: 16,
                width: 16,
              ),
              validator: (value) => Validators.validateConfirmPassword(
                value,
                context.read<ResetPasswordCubit>().newPasswordController.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
