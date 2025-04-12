import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';

class ChooseYourPlanBg extends StatelessWidget {
  const ChooseYourPlanBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.imagesChooseYourPlanBg,
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
