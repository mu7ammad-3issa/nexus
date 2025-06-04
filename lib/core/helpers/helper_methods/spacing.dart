import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Creates a vertical space with the given height (in logical pixels).
/// Uses `flutter_screenutil` to make the height responsive.
SizedBox verticalSpace([double height = 16]) => SizedBox(
      height: height.h,
    );

/// Creates a horizontal space with the given width (in logical pixels).
/// Uses `flutter_screenutil` to make the width responsive.
SizedBox horizontalSpace([double width = 16]) => SizedBox(
      width: width.w,
    );
