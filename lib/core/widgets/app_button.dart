import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.green1_500,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: AppTextStyles.bold16.copyWith(
            color: const Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
