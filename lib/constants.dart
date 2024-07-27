import 'package:e_commerce_app/core/helper_functions/on_generate_route.dart';
import 'package:e_commerce_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

const String kIsOnBoardingViewSeen = 'kIsOnBoardingViewSeen';
const List<CustomNavBarScreen> views = [
  CustomNavBarScreen(
    screen: HomeView(),
    routeAndNavigatorSettings: RouteAndNavigatorSettings(
      onGenerateRoute: onGenerateRoute,
    ),
  ),
  CustomNavBarScreen(
    screen: Scaffold(),
    routeAndNavigatorSettings: RouteAndNavigatorSettings(
      onGenerateRoute: onGenerateRoute,
    ),
  ),
  CustomNavBarScreen(
    screen: Scaffold(),
    routeAndNavigatorSettings: RouteAndNavigatorSettings(
      onGenerateRoute: onGenerateRoute,
    ),
  ),
  CustomNavBarScreen(
    screen: Scaffold(),
    routeAndNavigatorSettings: RouteAndNavigatorSettings(
      onGenerateRoute: onGenerateRoute,
    ),
  ),
];
