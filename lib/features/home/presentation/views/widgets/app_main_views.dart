import 'package:e_commerce_app/core/utils/constants.dart';
import 'package:e_commerce_app/core/widgets/app_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class AppMainViews extends StatefulWidget {
  const AppMainViews({super.key});

  @override
  State<AppMainViews> createState() => _AppMainViewsState();
}

class _AppMainViewsState extends State<AppMainViews> {
  final List<Widget> appMainViews = views;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: appMainViews,
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        onTapChanged: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
