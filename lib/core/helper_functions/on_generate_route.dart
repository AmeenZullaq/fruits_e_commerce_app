import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/widgets/app_main_views.dart';
import 'package:e_commerce_app/features/auth/presentation/views/singin_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/singup_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/more_popular_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/search_view.dart';
import 'package:e_commerce_app/features/notifications/presentation/views/notifications_view.dart';
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

    case AppRoutes.singInView:
      return MaterialPageRoute(
        builder: (context) => const SingInView(),
      );

    case AppRoutes.singupView:
      return MaterialPageRoute(
        builder: (context) => const SingupView(),
      );

    case AppRoutes.homeView:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
      );

    case AppRoutes.bestSellerView:
      return MaterialPageRoute(
        builder: (context) => const MorePopularView(),
      );

    case AppRoutes.appMainViews:
      return MaterialPageRoute(
        builder: (context) => const AppMainViews(),
      );

    case AppRoutes.searchView:
      return MaterialPageRoute(
        builder: (context) => const SearchView(),
      );

    case AppRoutes.notificationsView:
      return MaterialPageRoute(
        builder: (context) => const NotificationsView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
