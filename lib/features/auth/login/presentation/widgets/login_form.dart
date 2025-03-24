import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_extensions/context/routes.dart';
import 'package:nexus/core/helpers/base_widgets/auth_text_form_field.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/auth/forget_password/presentation/forget_password_screen.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
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
              controller: widget.emailController,
              isPassword: false,
              validator: Validators.validateEmail,
              onSaved: (value) {},
            ),
            verticalSpace(18.h),
            AuthTextFormField(
              label: 'Password',
              hint: 'At least 8 characters',
              isPassword: true,
              icon: SvgPicture.asset(
                Assets.iconsPassword,
              ),
              validator: Validators.validatePassword,
              onSaved: (value) {},
            ),
            verticalSpace(8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  context.navigate(const ForgetPasswordScreen());
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
