import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktopWidth = 1200;
  static const double tabletWidth = 800;
  static late double width;
  static late double height;

  static void init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
