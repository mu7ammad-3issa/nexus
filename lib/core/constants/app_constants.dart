// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class Constants {
  static var appColor = ColorsManager.green500;
  static var scaffoldBackGroundColor = ColorsManager.violet500;

  //date time

  // regExp
  static String emailRegExp =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.["
      r"a-zA-Z]+";
  static String phoneRegExp =
      r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]' r'{4,6}$)';

  // other
  // static void configLoading() {
  //   EasyLoading.instance
  //     ..displayDuration = const Duration(milliseconds: 2000)
  //     ..indicatorType = EasyLoadingIndicatorType.fadingCircle
  //     ..loadingStyle = EasyLoadingStyle.dark
  //     ..indicatorSize = 45.0
  //     ..radius = 10.0
  //     ..progressColor = Colors.yellow
  //     ..backgroundColor = Colors.green
  //     ..indicatorColor = Colors.yellow
  //     ..textColor = Colors.yellow
  //     ..maskColor = Colors.blue.withOpacity(0.5)
  //     ..userInteractions = true
  //     ..dismissOnTap = false
  //     ..maskType = EasyLoadingMaskType.black;
  // }
}
