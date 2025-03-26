import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';

class HomeBackGround extends StatelessWidget {
  const HomeBackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              Assets.imagesHomeBackGround,
            ),
            fit: BoxFit.fitWidth),
      ),
    );
  }
}
