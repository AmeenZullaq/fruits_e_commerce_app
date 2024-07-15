import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.keyboardType,
    required this.controller,
    this.validator,
    this.obscureText = false,
  });
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: AppColors.gray400,
      decoration: InputDecoration(
        contentPadding: EdgeInsetsDirectional.only(
          bottom: 16.h,
          top: 16.h,
          start: 16.w,
          end: 32.w,
        ),
        fillColor: const Color(0xffF9FAFA),
        filled: true,
        hintText: hintText,
        hintStyle: AppTextStyles.bold13.copyWith(
          color: AppColors.gray400,
        ),
        suffixIcon: suffixIcon,
        enabledBorder: border,
        focusedBorder: border,
        disabledBorder: border,
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
      ),
    );
  }
}

OutlineInputBorder border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(4),
  borderSide: const BorderSide(
    color: Color(0xffE6E9EA),
  ),
);
OutlineInputBorder errorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(4),
  borderSide: const BorderSide(
    color: Colors.red,
  ),
);
