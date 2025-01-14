import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppDecorations {
  static BoxDecoration greyDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(4.r),
    color: AppColors.gray50.withOpacity(.5),
  );
}
