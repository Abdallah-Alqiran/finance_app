import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryContainerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final IconData? iconData;
  final String? svgPicture;
  final void Function()? onPressed;
  const PrimaryContainerWidget({super.key, this.width, this.height, this.iconData, this.svgPicture, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
      height: (height ?? 56).h,
        width: (width ?? 105).w,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.tertiaryColor),
        ),
        child: Center(child: IconWidget(iconData: iconData, svgPicture: svgPicture)),
      ),
    );
  }
}
