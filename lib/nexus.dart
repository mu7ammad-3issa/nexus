import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/routing/app_router.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/layout/app_layout.dart';

import 'core/constants/constants.dart';
import 'core/routing/routes.dart';

class Nexus extends StatelessWidget {
  final AppRouter appRouter;
  const Nexus({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.appColor,
          scaffoldBackgroundColor: ColorsManager.scaffoldBackGroundColor,
        ),
        initialRoute: isUserLoggedIn ? Routes.homeScreen : Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
        home: const AppLayout(),
      ),
    );
  }
}
