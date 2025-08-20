import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_widget.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_container_widget.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                  width: 220.w,
                  child: Text(
                    "OTP Verification!",
                    style: AppStyles.primaryHeadlineStyle,
                  ),
                ),
                const HeightSpace(10),
                CustomTextWidget(
                  text:
                      "Enter the verification code we just sent on your email address.",
                ),
                const HeightSpace(32),
        
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  controller: pinCodeController,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  textStyle: AppStyles.primaryHeadlineStyle.copyWith(
                    fontSize: 22.sp,
                  ),
                  pinTheme: PinTheme(
                    fieldHeight: 60.h,
                    fieldWidth: 70.w,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    selectedColor: AppColors.primaryColor,
                    activeColor: AppColors.primaryColor,
                    inactiveColor: AppColors.grayColor,
                    inactiveFillColor: Color(0xFFF7F8F9),
                    activeFillColor: Colors.transparent,
                    selectedFillColor: Colors.transparent,
                    borderWidth: 1.w,
                  ),
                  onCompleted:
                      (value) => GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.mainScreen),
                ),
        
                const HeightSpace(30),
                PrimaryButtonWidget(
                  buttonText: "Verify",
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
                    } else {}
                  },
                ),
                Spacer(),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: RichText(
                      text: TextSpan(
                        text: "Don't received code? ",
                        style: AppStyles.navyBlue15BoldStyle.copyWith(
                          color: AppColors.primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Resend",
                            style: AppStyles.navyBlue15BoldStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const HeightSpace(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
