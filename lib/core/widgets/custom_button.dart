import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        alignment: Alignment.center,
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: AppColors.green1_500,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Text(
          text.tr(),
          style: AppTextStyles.bold16.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
