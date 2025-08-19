import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWidget extends StatelessWidget {
  final IconData? iconData;
  final String? svgPicture;

  const IconWidget({super.key, this.iconData, this.svgPicture});

  @override
  Widget build(BuildContext context) {
    return svgPicture != null
        ? SvgPicture.asset(svgPicture ?? "")
        : Icon(
          iconData ?? Icons.arrow_back_ios,
          color: AppColors.primaryColor,
        );
  }
}
