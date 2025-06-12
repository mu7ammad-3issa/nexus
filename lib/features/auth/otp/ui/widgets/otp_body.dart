import 'package:flutter/material.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/auth/otp/ui/widgets/otp_form.dart';
import 'package:nexus/features/auth/otp/ui/widgets/resend_otp_text.dart';

import 'otp_bloc_listener.dart';

class OtpBody extends StatelessWidget {
  final String email;
  const OtpBody({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(29),
          const CustomHeader(
            text: 'Verification',
          ),
          verticalSpace(240),
          FractionallySizedBox(
            widthFactor: 1,
            child: OtpForm(
              email: email,
            ),
          ),
          verticalSpace(20),
          const ResendOtpText(),
          const OtpBlocListener(),
        ],
      ),
    );
  }
}
