import 'package:e_commerce_app/core/utils/constants/app_views.dart';
import 'package:e_commerce_app/core/utils/functions/on_generate_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FruitsApp());
}

class FruitsApp extends StatelessWidget {
  const FruitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppViews.splashView,
    );
  }
}
