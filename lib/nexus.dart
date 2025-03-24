import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/app_constants.dart';
import 'package:nexus/features/auth/login/presentation/login_screen.dart';
import 'package:nexus/features/auth/otp/presentation/otp_screen.dart';

class Nexus extends StatelessWidget {
  const Nexus({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Constants.scaffoldBackGroundColor,
        ),
        home: const OtpScreen(),
      ),
    );
  }
}
