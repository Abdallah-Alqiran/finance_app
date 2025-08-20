import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLoginWidget extends StatelessWidget {
  final String text;
  const CustomOrLoginWidget({super.key, this.text = "Or Login With"});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 90.w, child: const Divider()),
        const WidthSpace(12),
        Text(text, style: AppStyles.navyBlue15BoldStyle),
        const WidthSpace(12),
        SizedBox(width: 90.w, child: const Divider()),
      ],
    );
  }
}
