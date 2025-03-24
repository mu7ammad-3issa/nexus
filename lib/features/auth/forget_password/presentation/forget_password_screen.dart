import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/features/auth/forget_password/presentation/widgets/forget_password_body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assets.imagesForgetPasswordWavyLine,
            ),
            const ForgetPasswordBody(),
          ],
        ),
      ),
    );
  }
}
