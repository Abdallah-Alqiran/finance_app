import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoarding,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fitWidth,
          ),
          const HeightSpace(21),
          PrimaryButtonWidget(
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
            buttonText: "Login",
          ),
          const HeightSpace(15),
          PrimaryOutlinedButtonWidget(
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.registerScreen); 
            },
            buttonText: "Register",
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Continue as a guest",
              style: AppStyles.navyBlue15BoldStyle.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
