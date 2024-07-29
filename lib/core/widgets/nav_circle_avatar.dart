import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavCircleAvatar extends StatelessWidget {
  const NavCircleAvatar({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15.r,
      backgroundColor: AppColors.green1_500,
      child: Icon(
        icon,
        size: 20.sp,
        color: Colors.white,
      ),
    );
  }
}