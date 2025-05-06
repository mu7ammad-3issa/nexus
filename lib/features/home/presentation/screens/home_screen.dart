import 'package:flutter/material.dart';
import 'package:nexus/features/home/presentation/widgets/home_back_ground.dart';
import 'package:nexus/features/home/presentation/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            HomeBackGround(),
            HomeScreenBody(),
          ],
        ),
      ),
    );
  }
}
