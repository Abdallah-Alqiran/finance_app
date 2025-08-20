import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_widget.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_container_widget.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
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
                  width: 250.w,
                  child: Text(
                    "Forgot Password?",
                    style: AppStyles.primaryHeadlineStyle,
                  ),
                ),
                const HeightSpace(10),
                CustomTextWidget(
                  text:
                      "Don't worry! It occurs. Please enter the email address linked with your account.",
                ),
                const HeightSpace(32),
                CustomTextfield(
                  hintText: "Enter your Email",
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Email";
                    }
                      return null;

                  },
                ),
                const HeightSpace(30),
                PrimaryButtonWidget(buttonText: "Send Code", onPress: () {
                }),
                const HeightSpace(80),
                Center(
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Remember Password? ",
                        style: AppStyles.navyBlue15BoldStyle.copyWith(
                          color: AppColors.primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: AppStyles.navyBlue15BoldStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
