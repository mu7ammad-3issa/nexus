import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/app_text_button.dart';
import 'package:nexus/core/widgets/auth_text_form_field.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';

class ForgotPasswordFormWithButton extends StatefulWidget {
  const ForgotPasswordFormWithButton({super.key});

  @override
  State<ForgotPasswordFormWithButton> createState() =>
      _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgotPasswordFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      // final String email = _emailController.text;
      // await SharedPrefHelper.setData('email', email);
      // context.read<ForgetPasswordCubit>().resetPassword(email);
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
              controller: _emailController,
              label: 'Email',
              hint: 'example@gmail.com',
              isPassword: false,
              icon: SvgPicture.asset(
                Assets.iconsEmail,
                height: 16,
                width: 16,
              ),
              validator: Validators.validateEmail,
              onSaved: (value) {},
            ),
          ),
          verticalSpace(167),
          AppTextButton(
            onPressed: _submitForm,
            text: 'Continue',
          ),
        ],
      ),
    );
  }
}
