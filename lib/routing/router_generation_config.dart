import 'package:finance_app/features/auth/forget_password_screen.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/register_screen.dart';
import 'package:finance_app/features/auth/verify_otp/verify_otp_screen.dart';
import 'package:finance_app/features/main_screen/main_screen.dart';
import 'package:finance_app/features/on_boarding_screen.dart';
import 'package:finance_app/routing/app_routes.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen()
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => LoginScreen(), 
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => RegisterScreen(), 
      ),
      GoRoute(
        path: AppRoutes.forgetPasswordScreen,
        name: AppRoutes.forgetPasswordScreen,
        builder: (context, state) => ForgetPasswordScreen(), 
      ),
      GoRoute(
        path: AppRoutes.verifyOtpScreen,
        name: AppRoutes.verifyOtpScreen,
        builder: (context, state) => VerifyOtpScreen(), 
      ),
      GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => MainScreen(), 
      ),

    ]
  );
}