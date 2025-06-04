import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/features/auth/sign_up/ui/widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assets.imagesSignUpWavyLine,
              fit: BoxFit.fitWidth,
            ),
            const SignUpBody(),
          ],
        ),
      ),
    );
  }
}
