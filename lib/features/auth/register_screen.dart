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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
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
            child: Form(
              key: formKey,
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
                      "Hello! Register to Get Started",
                      style: AppStyles.primaryHeadlineStyle,
                    ),
                  ),
                  const HeightSpace(32),
                  CustomTextfield(
                    hintText: "Username",
                    controller: userNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your User Name";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(15),
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
                  const HeightSpace(15),
                  CustomTextfield(
                    hintText: "Enter your Password",
                    isPassword: true,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.grayColor,
                      size: 20.sp,
                    ),
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 characters";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(15),
                  CustomTextfield(
                    hintText: "Confirm Password",
                    isPassword: true,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.grayColor,
                      size: 20.sp,
                    ),
                    controller: passwordConfirmController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Password Again";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 characters";
                      }
                      if (value != passwordController.text) {
                        return "Should Confirm Password";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.forgetPasswordScreen);
                      },
                      child: Text(
                        "Forget Password",
                        style: AppStyles.navyBlue15BoldStyle,
                      ),
                    ),
                  ),
                  const HeightSpace(30),
                  PrimaryButtonWidget(
                    buttonText: "Register",
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.verifyOtpScreen);
                      } else {}
                    },
                  ),
                  const HeightSpace(35),
                  const CustomOrLoginWidget(text: "Or Register With"),
                  const HeightSpace(22),
                  const SocialLoginButtons(),
                  const HeightSpace(40),
                  Center(
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an Account? ",
                          style: AppStyles.navyBlue15BoldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: "Login Now",
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
      ),
    );
  }
}
