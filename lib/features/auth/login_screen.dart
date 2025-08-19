import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_container_widget.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_login_buttons.dart';
import 'package:finance_app/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpace(12),
              Align(
                alignment: Alignment.centerLeft,
                child: PrimaryContainerWidget(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  width: 41,
                  height: 41,
                ),
              ),
              const HeightSpace(28),
              SizedBox(
                width: 200.w,
                child: Text(
                  "Welcom Back! Again!",
                  style: AppStyles.primaryHeadlineStyle,
                ),
              ),
              const HeightSpace(32),
              CustomTextfield(hintText: "Enter your Email"),
              const HeightSpace(15),
              CustomTextfield(
                hintText: "Enter your Password",
                isPassword: true,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: AppColors.grayColor,
                  size: 20.sp,
                ),
              ),
              const HeightSpace(15),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.forgetPassword);
                  },
                  child: Text(
                    "Forget Password",
                    style: AppStyles.navyBlue15BoldStyle,
                  ),
                ),
              ),
              const HeightSpace(30),
              PrimaryButtonWidget(buttonText: "Login", onPress: () {}),
              const HeightSpace(35),
              const CustomOrLoginWidget(),
              const HeightSpace(22),
              const SocialLoginButtons(),
              const HeightSpace(120),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: AppStyles.navyBlue15BoldStyle.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: "Register Now",
                        style: AppStyles.navyBlue15BoldStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
