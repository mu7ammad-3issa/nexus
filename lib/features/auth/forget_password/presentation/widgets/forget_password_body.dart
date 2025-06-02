import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/forget_password/presentation/widgets/forget_password_form_with_button.dart';

@override
class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(33),
          const CustomHeader(
            text: 'Forget Password',
          ),
          verticalSpace(210.h),
          const ForgetPasswordFormWithButton(),
        ],
      ),
    );
  }
}
