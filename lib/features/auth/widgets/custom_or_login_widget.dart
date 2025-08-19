import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 100.w, child: const Divider()),
        const WidthSpace(12),
        Text("Or Login With", style: AppStyles.navyBlue15BoldStyle),
        const WidthSpace(12),
        SizedBox(width: 100.w, child: const Divider()),
      ],
    );
  }
}
