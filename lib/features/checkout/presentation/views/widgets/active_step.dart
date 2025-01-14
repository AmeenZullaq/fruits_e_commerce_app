import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveStep extends StatelessWidget {
  const ActiveStep({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12.r,
          backgroundColor: AppColors.green1_500,
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 16.sp,
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          title,
          style: AppTextStyles.bold13.copyWith(
            color: AppColors.green1_500,
          ),
        ),
      ],
    );
  }
}
