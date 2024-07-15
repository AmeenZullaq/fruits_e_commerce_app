import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinPutField extends StatelessWidget {
  const PinPutField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      keyboardType: TextInputType.number,
      focusedPinTheme: getPinTheme(
        textColor: AppColors.orange500,
        borderColor: AppColors.orange500,
      ),
      followingPinTheme: getPinTheme(),
      submittedPinTheme: getPinTheme(),
      errorPinTheme: getPinTheme(
        borderColor: Colors.red,
      ),
    );
  }

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
}
