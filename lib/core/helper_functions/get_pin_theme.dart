import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

PinTheme getPinTheme({
  Color borderColor = const Color(0xffE6E9EA),
  Color textColor = AppColors.gray950,
}) {
  return PinTheme(
    height: 60.h,
    width: 74.w,
    textStyle: AppTextStyles.bold23.copyWith(
      color: textColor,
    ),
    decoration: BoxDecoration(
      color: const Color(0xffF9FAFA),
      borderRadius: BorderRadius.circular(4),
      border: Border.all(
        color: borderColor,
      ),
    ),
  );
}
