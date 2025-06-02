import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/widgets/app_text_button.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';

import 'login_form.dart';
import 'package:flutter/material.dart';

class LoginFormWithButton extends StatefulWidget {
  const LoginFormWithButton({super.key});

  @override
  State<LoginFormWithButton> createState() => _LoginFormWithButtonState();
}

class _LoginFormWithButtonState extends State<LoginFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // final email = _emailController.text;
      // final password = _passwordController.text;
      // context.read<LoginCubit>().emitLoginStates(email, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginForm(
          formKey: _formKey,
          emailController: _emailController,
          passwordController: _passwordController,
        ),
        verticalSpace(24.h),
        AppTextButton(
          onPressed: _submitForm,
          text: 'Sign in',
        ),
      ],
    );
  }
}
