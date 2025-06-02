import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/auth_text_form_field.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';

class SignUpForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const SignUpForm(
      {super.key,
      required this.formKey,
      required this.nameController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal(24.w),
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            AuthTextFormField(
              label: 'Full Name',
              hint: 'John Doe',
              icon: SvgPicture.asset(
                Assets.iconsUser,
              ),
              controller: widget.nameController,
              isPassword: false,
              validator: Validators.validateName,
              onSaved: (value) {},
            ),
            verticalSpace(24.h),
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
            verticalSpace(24.h),
            AuthTextFormField(
              label: 'Password',
              hint: 'At least 8 characters',
              icon: SvgPicture.asset(
                Assets.iconsPassword,
              ),
              controller: widget.passwordController,
              isPassword: true,
              validator: Validators.validatePassword,
              onSaved: (value) {},
            ),
            verticalSpace(24.h),
            AuthTextFormField(
              label: 'Confirm Password',
              hint: 'Re-enter your password',
              icon: SvgPicture.asset(
                Assets.iconsPassword,
              ),
              controller: widget.confirmPasswordController,
              isPassword: true,
              validator: (value) => Validators.validateConfirmPassword(
                  value, widget.passwordController.text),
              onSaved: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
