import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/features/auth/otp/ui/widgets/otp_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(Assets.imagesOtpWavyLine),
            const OtpBody(),
          ],
        ),
      ),
    );
  }
}
