import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/features/auth/reset_password/ui/widgets/reset_password_body.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.otp});
  final String otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assets.imagesResetPasswordWavyLine,
            ),
            ResetPasswordBody(
              otp: otp,
            ),
          ],
        ),
      ),
    );
  }
}
