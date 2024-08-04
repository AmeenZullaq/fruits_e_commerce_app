import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/widgets/app_bottom_nav_bar.dart';
import 'package:e_commerce_app/features/products/presentation/cubits/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class AppMainViews extends StatefulWidget {
  const AppMainViews({super.key});

  @override
  State<AppMainViews> createState() => _AppMainViewsState();
}

class _AppMainViewsState extends State<AppMainViews> {
  late PersistentTabController controller;
  final List<CustomNavBarScreen> appViews = views;

  @override
  void initState() {
    super.initState();
    controller = PersistentTabController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, bool>(
        builder: (context, state) {
          return PersistentTabView.custom(
            isVisible: state,
            context,
            controller: controller,
            resizeToAvoidBottomInset: true,
            screens: views,
            itemCount: appViews.length,
            navBarHeight: 56.h,
            customWidget: AppBottomNavBar(
              controller: controller,
            ),
          );
        },
      ),
    );
  }
}
