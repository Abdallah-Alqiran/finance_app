import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadlineStyle = TextStyle(
    fontFamily: AppFonts.mainFontName, 
    fontSize: 30.sp, 
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor
  );

  static TextStyle subtitlesStyles = TextStyle(
    fontFamily: AppFonts.mainFontName,
     fontSize: 16.sp,
     fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor
  );

  static TextStyle black16W500Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor
  );

    static TextStyle black18BoldStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor
  );

  static TextStyle gray12MediumStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.grayColor
  );

  static TextStyle navyBlue15BoldStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: Color(0xFF202955)
  );
}