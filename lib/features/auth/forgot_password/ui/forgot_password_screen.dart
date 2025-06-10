import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/features/auth/forgot_password/ui/widgets/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assets.imagesForgetPasswordWavyLine,
            ),
            const ForgotPasswordBody(),
          ],
        ),
      ),
    );
  }
}
