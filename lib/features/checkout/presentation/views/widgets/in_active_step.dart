import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InActiveStep extends StatelessWidget {
  const InActiveStep({
    super.key,
    required this.title,
    required this.stepNumber,
  });
  final String title;
  final int stepNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12.r,
          backgroundColor: AppColors.gray100.withOpacity(.5),
          child: Text(
            '$stepNumber',
            style: AppTextStyles.semiBold13.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          title,
          style: AppTextStyles.semiBold13.copyWith(
            color: AppColors.gray400,
          ),
        ),
      ],
    );
  }
}
