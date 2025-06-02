import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/nexus.dart';

import 'core/di/dependency_injectiond.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();

  runApp(
    Nexus(
      appRouter: AppRouter(),
    ),
  );
}
