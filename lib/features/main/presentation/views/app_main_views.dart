import 'package:e_commerce_app/core/constants/constants.dart';
import 'package:e_commerce_app/core/helper_functions/showing_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/app_bottom_nav_bar.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartProductAdded) {
          showingSnackBar(
            context,
            text: LocaleKeys.productAdded.tr(),
          );
        }
      },
      child: Scaffold(
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
      ),
    );
  }
}
