import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/features/auth/presentation/views/singin_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/password_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/singup_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/home_view.dart';
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

    case AppRoutes.singIn:
      return MaterialPageRoute(
        builder: (context) => const SingInView(),
      );

    case AppRoutes.singupView:
      return MaterialPageRoute(
        builder: (context) => const SingupView(),
      );

    case AppRoutes.passwordView:
      return MaterialPageRoute(
        builder: (context) => const PasswordView(),
      );

    case AppRoutes.homeView:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
