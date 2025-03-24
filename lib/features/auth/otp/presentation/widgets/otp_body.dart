import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_widgets/custom_header.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/features/auth/otp/presentation/widgets/otp_form.dart';
import 'package:nexus/features/auth/otp/presentation/widgets/resend_otp_text.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(29),
          const CustomHeader(
            text: 'Verification',
          ),
          verticalSpace(240.h),
          const FractionallySizedBox(
            widthFactor: 1,
            child: OtpForm(),
          ),
          verticalSpace(20),
          const ResendOtpText(),
        ],
      ),
    );
  }
}
