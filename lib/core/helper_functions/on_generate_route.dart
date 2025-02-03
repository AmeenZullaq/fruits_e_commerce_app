import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/checkout_view.dart';
import 'package:e_commerce_app/features/main/presentation/views/app_main_views.dart';
import 'package:e_commerce_app/features/auth/presentation/views/re_set_password_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/singin_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/singup_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/search_view.dart';
import 'package:e_commerce_app/features/notifications/presentation/views/notifications_view.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce_app/features/cart/presentation/views/cart_view.dart';
import 'package:e_commerce_app/features/products/presentation/views/product_details_view.dart';
import 'package:e_commerce_app/features/profile/presentation/views/account_view.dart';
import 'package:e_commerce_app/features/profile/presentation/views/language_view.dart';
import 'package:e_commerce_app/features/profile/presentation/views/profile_view.dart';
import 'package:e_commerce_app/features/profile/presentation/views/who_are_we_view.dart';
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

    case AppRoutes.resetPasswordView:
      return MaterialPageRoute(
        builder: (context) => const ReSetPasswordView(),
      );

    case AppRoutes.homeView:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
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

    case AppRoutes.itemDetailsView:
      return MaterialPageRoute(
        builder: (context) {
          final product = settings.arguments as ProductEntity;
          return ProductDetailsView(
            product: product,
          );
        },
      );

    case AppRoutes.cartView:
      return MaterialPageRoute(
        builder: (context) => const CartView(),
      );

    case AppRoutes.accountView:
      return MaterialPageRoute(
        builder: (context) => const AccountView(),
      );

    case AppRoutes.profileView:
      return MaterialPageRoute(
        builder: (context) => const ProfileView(),
      );

    case AppRoutes.whoAreWeView:
      return MaterialPageRoute(
        builder: (context) => const WhoAreWeView(),
      );

    case AppRoutes.languageView:
      return MaterialPageRoute(
        builder: (context) => const LanguageView(),
      );
    case AppRoutes.checkoutView:
      return MaterialPageRoute(
        builder: (context) {
          final cartEntity = settings.arguments as CartEntity;
          return CheckoutView(
            cartEntity: cartEntity,
          );
        },
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
