import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_container_widget.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfileNotificationWidget extends StatelessWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.profileImage,
                width: 48.sp,
                height: 48.sp,
                fit: BoxFit.fill,
              ),
            ),
            const WidthSpace(11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: AppStyles.gray12MediumStyle),
                const HeightSpace(2),
                Text("Abdallah Alqiran", style: AppStyles.black18BoldStyle),
              ],
            ),
          ],
        ),
        PrimaryContainerWidget(
          iconData: Icons.notifications,
          width: 48.w,
          height: 48.h,
        ),
      ],
    );
  }
}
