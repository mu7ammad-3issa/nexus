import 'package:flutter/material.dart';

/// Creates a vertical space with the given height (in logical pixels).
/// Uses `flutter_screenutil` to make the height responsive.
SizedBox verticalSpace([double height = 16]) => SizedBox(
      height: height,
    );

/// Creates a horizontal space with the given width (in logical pixels).
/// Uses `flutter_screenutil` to make the width responsive.
SizedBox horizontalSpace([double width = 16]) => SizedBox(
      width: width,
    );
