import 'package:finance_app/features/auth/forget_password_screen.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/register_screen.dart';
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
        path: AppRoutes.forgetPassword,
        name: AppRoutes.forgetPassword,
        builder: (context, state) => ForgetPasswordScreen(), 
      ),

    ]
  );
}