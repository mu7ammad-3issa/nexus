import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/auth_text_form_field.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';
import 'package:nexus/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:nexus/features/auth/sign_up/ui/widgets/terms_and_condition.dart';

import '../../../../../core/theming/app_styles.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal(24.w),
      child: Form(
        key: context.read<SignUpCubit>().formkey,
        child: Column(
          children: [
            AuthTextFormField(
              label: 'Full Name',
              hint: 'John Doe',
              icon: SvgPicture.asset(
                Assets.iconsUser,
              ),
              controller: context.read<SignUpCubit>().nameController,
              isPassword: false,
              validator: Validators.validateName,
            ),
            verticalSpace(24),
            AuthTextFormField(
              label: 'Email',
              hint: 'example@email.com',
              icon: SvgPicture.asset(
                Assets.iconsEmail,
              ),
              controller: context.read<SignUpCubit>().emailController,
              isPassword: false,
              validator: Validators.validateEmail,
            ),
            verticalSpace(24),
            AuthTextFormField(
              label: 'Password',
              hint: 'At least 8 characters',
              icon: SvgPicture.asset(
                Assets.iconsPassword,
              ),
              controller: context.read<SignUpCubit>().passwordController,
              isPassword: true,
              validator: Validators.validatePassword,
            ),
            verticalSpace(24),
            AuthTextFormField(
              label: 'Confirm Password',
              hint: 'Re-enter your password',
              icon: SvgPicture.asset(
                Assets.iconsPassword,
              ),
              controller: context.read<SignUpCubit>().confirmPasswordController,
              isPassword: true,
              validator: (value) => Validators.validateConfirmPassword(
                value,
                context.read<SignUpCubit>().passwordController.text,
              ),
            ),
            verticalSpace(6),
            TermsAndCondition(
              onChanged: (bool isChecked) {
                setState(() {
                  context.read<SignUpCubit>().isTermsChecked = isChecked;
                });
              },
            ),
            if (!context.read<SignUpCubit>().isTermsValid)
              Padding(
                padding: context.horizontal(28.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You must agree to the Terms & Conditions',
                    style: AppStyles.aldrichRegular12Violet50.copyWith(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
