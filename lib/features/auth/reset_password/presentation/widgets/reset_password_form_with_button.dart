import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/app_text_button.dart';
import 'package:nexus/core/helpers/base_widgets/auth_text_form_field.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';

class ResetPasswordFormWithButton extends StatefulWidget {
  final String email;
  final String otp;

  const ResetPasswordFormWithButton(
      {super.key, required this.email, required this.otp});

  @override
  State<ResetPasswordFormWithButton> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // final String newPassword = _newPasswordController.text;
      // final String confirmPassword = _confirmPasswordController.text;
      // final String email = widget.email;
      // final String otp = widget.otp;

      // final requestModel = ResetPasswordRequestModel(
      //   email: email,
      //   otp: otp,
      //   password: newPassword,
      //   confirmPassword: confirmPassword,
      // );
      // context.read<ResetPasswordCubit>().resetPassword(requestModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: context.horizontal(24.w),
            child: AuthTextFormField(
              controller: _newPasswordController,
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
              controller: _confirmPasswordController,
              label: 'Confirm Password',
              hint: 'Re-enter your password',
              isPassword: true,
              icon: SvgPicture.asset(
                Assets.iconsPassword,
                height: 16,
                width: 16,
              ),
              validator: (value) => Validators.validateConfirmPassword(
                  value, _newPasswordController.text),
              onSaved: (value) {},
            ),
          ),
          verticalSpace(68),
          AppTextButton(
            onPressed: _submitForm,
            text: 'Confirm',
          ),
        ],
      ),
    );
  }
}
