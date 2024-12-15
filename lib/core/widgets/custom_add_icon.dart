import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddIcon extends StatelessWidget {
  const CustomAddIcon({
    super.key,
    this.raduis,
    this.iconColor,
    this.backgroundColor,
    this.iconSize,
    this.icon,
    this.onTap,
  });
  final double? raduis;
  final Color? iconColor;
  final Color? backgroundColor;
  final double? iconSize;
  final IconData? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: raduis ?? 18.r,
        backgroundColor: backgroundColor ?? AppColors.green1_500,
        child: Center(
          child: Icon(
            icon ?? Icons.add,
            size: iconSize ?? 22.sp,
            color: iconColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
