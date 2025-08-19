import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedButtonWidget extends StatelessWidget {
  final String? buttonText;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? borderColor;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onPress;
  const PrimaryOutlinedButtonWidget({
    super.key,
    this.buttonText,
    this.width,
    this.height,
    this.borderRadius,
    this.borderColor,
    this.textColor,
    this.fontSize,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
        side: BorderSide(color: borderColor ?? AppColors.primaryColor, width: 2.w),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 16.sp,
        ),
      ),
    );
  }
}
