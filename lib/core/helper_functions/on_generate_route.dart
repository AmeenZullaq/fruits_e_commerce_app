import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashView:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );

    case AppRoutes.onBoardingView:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );

    case AppRoutes.loginView:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}