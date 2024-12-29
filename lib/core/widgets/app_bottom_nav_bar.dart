import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/widgets/nav_circle_avatar.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key, required this.onTapChanged});

  final Function(int index) onTapChanged;

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
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
        iconSize: 24.sp,
        tabBackgroundColor: const Color(0xffEEEEEE),
        padding: EdgeInsetsDirectional.only(end: 8.w),
        textStyle: AppTextStyles.semiBold11.copyWith(
          color: AppColors.green1_500,
        ),
        onTabChange: (index) {
          currentIndex = index;
          widget.onTapChanged(index);
          setState(() {});
        },
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: LocaleKeys.Main.tr(),
            leading: currentIndex == 0
                ? const NavCircleAvatar(
                    icon: Icons.home,
                  )
                : null,
          ),
          GButton(
            icon: Icons.widgets_outlined,
            text: LocaleKeys.Products.tr(),
            leading: currentIndex == 1
                ? const NavCircleAvatar(
                    icon: Icons.widgets,
                  )
                : null,
          ),
          GButton(
            icon: Icons.shopping_cart_outlined,
            text: LocaleKeys.Shopping_basket.tr(),
            leading: currentIndex == 2
                ? const NavCircleAvatar(
                    icon: Icons.shopping_cart,
                  )
                : null,
          ),
          GButton(
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
