import 'package:e_commerce_app/core/helper_functions/get_pin_theme.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
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
}
