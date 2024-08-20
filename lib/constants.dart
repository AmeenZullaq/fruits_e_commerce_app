import 'package:e_commerce_app/core/helper_functions/on_generate_route.dart';
import 'package:e_commerce_app/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_app/features/products/presentation/views/cart_view.dart';
import 'package:e_commerce_app/features/products/presentation/views/products_view.dart';
import 'package:e_commerce_app/features/profile/presentation/views/profile_view.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

const String kRecentSearches = 'recentSearches';
const String kIsOnBoardingViewSeen = 'kIsOnBoardingViewSeen';
const List<CustomNavBarScreen> views = [
  CustomNavBarScreen(
    screen: HomeView(),
    routeAndNavigatorSettings: RouteAndNavigatorSettings(
      onGenerateRoute: onGenerateRoute,
    ),
  ),
  CustomNavBarScreen(
    screen: ProductsView(),
    routeAndNavigatorSettings: RouteAndNavigatorSettings(
      onGenerateRoute: onGenerateRoute,
    ),
  ),
  CustomNavBarScreen(
    screen: CartView(),
    routeAndNavigatorSettings: RouteAndNavigatorSettings(
      onGenerateRoute: onGenerateRoute,
    ),
  ),
  CustomNavBarScreen(
    screen: ProfileView(),
    routeAndNavigatorSettings: RouteAndNavigatorSettings(
      onGenerateRoute: onGenerateRoute,
    ),
  ),
];

List<String> fruitNames = [
  LocaleKeys.Apple.tr(),
  LocaleKeys.Banana.tr(),
  LocaleKeys.Cherry.tr(),
  LocaleKeys.Date.tr(),
  LocaleKeys.Elderberry.tr(),
  LocaleKeys.Fig.tr(),
  LocaleKeys.Grape.tr(),
  LocaleKeys.Honeydew.tr(),
  LocaleKeys.Kiwi.tr(),
  LocaleKeys.Lemon.tr(),
  LocaleKeys.Mango.tr(),
  LocaleKeys.Nectarine.tr(),
  LocaleKeys.Orange.tr(),
  LocaleKeys.Raspberry.tr(),
  LocaleKeys.straw_perry.tr(),
  LocaleKeys.Tangerine.tr(),
  LocaleKeys.Ugli_Fruit.tr(),
  LocaleKeys.Vine_Peach.tr(),
  LocaleKeys.Watermelon.tr(),
  LocaleKeys.Xigua.tr(),
  LocaleKeys.Yellow_Passion_Fruit.tr(),
  LocaleKeys.Papaya.tr(),
  LocaleKeys.Quince.tr(),
];
