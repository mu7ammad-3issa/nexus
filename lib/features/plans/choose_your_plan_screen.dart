import 'package:flutter/material.dart';
import 'package:nexus/features/plans/widgets/choose_your_plan_bg.dart';
import 'package:nexus/features/plans/widgets/choose_your_plan_body.dart';

class ChooseYourPlanScreen extends StatelessWidget {
  const ChooseYourPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ChooseYourPlanBg(),
            ChooseYourPlanBody(),
          ],
        ),
      ),
    );
  }
}
