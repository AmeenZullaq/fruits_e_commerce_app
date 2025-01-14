import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.height,
  });

  final String text;
  final void Function() onTap;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        alignment: Alignment.center,
        width: double.infinity,
        height: height ?? 60.h,
        decoration: BoxDecoration(
          color: AppColors.green1_500,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Text(
          text,
          style: AppTextStyles.bold16.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
