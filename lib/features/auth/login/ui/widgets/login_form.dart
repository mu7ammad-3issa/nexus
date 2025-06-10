import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/core/widgets/auth_text_form_field.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/auth/login/logic/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Padding(
        padding: context.horizontal(24.w),
        child: Column(
          children: [
            AuthTextFormField(
              label: 'Email',
              hint: 'example@email.com',
              icon: SvgPicture.asset(
                Assets.iconsEmail,
              ),
              controller: context.read<LoginCubit>().emailController,
              isPassword: false,
              validator: Validators.validateEmail,
            ),
            verticalSpace(18),
            AuthTextFormField(
              label: 'Password',
              hint: 'At least 8 characters',
              isPassword: true,
              icon: SvgPicture.asset(
                Assets.iconsPassword,
              ),
              validator: Validators.validateLoginPassword,
              controller: context.read<LoginCubit>().passwordController,
            ),
            verticalSpace(8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  context.pushNamed(Routes.forgotPasswordScreen);
                },
                child: Text(
                  "Forgot Password?",
                  style: AppStyles.aldrichRegular12Violet50.copyWith(
                    color: ColorsManager.lightGray,
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
