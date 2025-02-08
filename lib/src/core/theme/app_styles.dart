import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexus/src/core/theme/colors_manager.dart';
import 'package:nexus/src/core/theme/font_weight_helper.dart';

abstract class AppStyles {
  static TextStyle aldrichRegular14Violet50 = GoogleFonts.aldrich(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.violet50,
  );

  static TextStyle aldrichRegular12Violet50 = GoogleFonts.aldrich(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.violet50,
  );

  static TextStyle aldrichRegular16Violet100 = GoogleFonts.aldrich(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.violet100,
  );

  static TextStyle aldrichRegular24 = GoogleFonts.aldrich(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.white,
  );
  static TextStyle aldrichRegular20Violet50 = GoogleFonts.aldrich(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.violet50,
  );
  static TextStyle poppinsRegular16Violet50 = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.violet50,
  );
  static TextStyle aldrichRegular48Black = GoogleFonts.aldrich(
    fontSize: 48.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.black,
  );
  static TextStyle aldrichRegular64Black = GoogleFonts.aldrich(
    fontSize: 64.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.black,
  );
  static TextStyle arOneSansMedium14Green500 = GoogleFonts.arOneSans(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.green500,
  );
  static TextStyle poppinsSemiBold16Violet500 = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.violet500,
  );
  static TextStyle poppinsSemiBold20Violet50 = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.violet50,
  );
  static TextStyle poppinsMedium16Violet50 = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.violet50,
  );
}
