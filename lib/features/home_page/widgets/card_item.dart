import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItemWidget extends StatelessWidget {
  final String cardName;
  final String totalMoney;
  final String password;
  final String expiredDate;
  final Color? cardColor;
  const CardItemWidget({
    super.key,
    this.cardName = "X Card",
    this.totalMoney = "100 000 EG",
    this.password = "3434",
    this.expiredDate = "06/26",
    this.cardColor
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: cardColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer2Image,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer2Image,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1Image,
            width: 120.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1Image,
            width: 120.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),

        Positioned(
          left: 24.w,
          top: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardName,
                style: AppStyles.black18BoldStyle.copyWith(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              const HeightSpace(57),
              Text(
                "Balance",
                style: AppStyles.black18BoldStyle.copyWith(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
              const HeightSpace(10),
              Text(
                totalMoney,
                style: AppStyles.black18BoldStyle.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26.h,
          right: 24.w,
          child: Text(
            expiredDate,
            style: AppStyles.black18BoldStyle.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 26.h,
          left: 24.w,
          child: Text(
            "****  $password",
            style: AppStyles.black18BoldStyle.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
