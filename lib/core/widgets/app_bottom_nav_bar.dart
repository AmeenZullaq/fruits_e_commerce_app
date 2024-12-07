import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/nav_circle_avatar.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({
    super.key,
    required this.controller,
  });
  final PersistentTabController controller;

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(24.r),
          topStart: Radius.circular(24.r),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            color: const Color(0xff000000).withOpacity(.10),
            spreadRadius: 0,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: GNav(
        gap: 4.w,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        selectedIndex: currentIndex,
        color: AppColors.gray400,
        iconSize: 20.sp,
        tabBackgroundColor: const Color(0xffEEEEEE),
        padding: EdgeInsetsDirectional.only(end: 8.w),
        textStyle: AppTextStyles.semiBold11.copyWith(
          color: AppColors.green1_500,
        ),
        onTabChange: (index) {
          currentIndex = index;
          setState(() {});
        },
        tabs: [
          GButton(
            onPressed: () {
              widget.controller.jumpToTab(0);
            },
            icon: Icons.home_outlined,
            text: LocaleKeys.Main.tr(),
            leading: currentIndex == 0
                ? const NavCircleAvatar(
                    icon: Icons.home,
                  )
                : null,
          ),
          GButton(
            onPressed: () {
              widget.controller.jumpToTab(1);
            },
            icon: Icons.widgets_outlined,
            text: LocaleKeys.Products.tr(),
            leading: currentIndex == 1
                ? const NavCircleAvatar(
                    icon: Icons.widgets,
                  )
                : null,
          ),
          GButton(
            onPressed: () {
              widget.controller.jumpToTab(2);
            },
            icon: Icons.shopping_cart_outlined,
            text: LocaleKeys.Shopping_basket.tr(),
            leading: currentIndex == 2
                ? const NavCircleAvatar(
                    icon: Icons.shopping_cart,
                  )
                : null,
          ),
          GButton(
            onPressed: () {
              widget.controller.jumpToTab(3);
            },
            icon: Icons.person_outline,
            text: LocaleKeys.my_account.tr(),
            leading: currentIndex == 3
                ? const NavCircleAvatar(
                    icon: Icons.person,
                  )
                : null,
          ),
        ],
   
   
      ),
    );
  }
}
