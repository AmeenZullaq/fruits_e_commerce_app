import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.borderColor,
    required this.hintText,
    this.suffixIcon,
    this.keyboardType,
    required this.controller,
    this.validator,
    this.obscureText = false,
    this.contentPadding,
    this.fillColor,
    this.prefixIcon,
    this.widthBorderSide,
    this.focusNode,
    this.readOnly = false,
  });
  final String hintText;
  final Color? borderColor;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final Widget? prefixIcon;
  final double? widthBorderSide;
  final FocusNode? focusNode;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      focusNode: focusNode,
      obscureText: obscureText!,
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: AppColors.gray400,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: getBorder(color: borderColor),
        focusedBorder: getBorder(color: borderColor),
        disabledBorder: getBorder(color: borderColor),
        errorBorder: getBorder(color: Colors.red),
        focusedErrorBorder: getBorder(color: Colors.red),
        fillColor: fillColor ?? const Color(0xffF9FAFA),
        filled: true,
        hintText: hintText,
        contentPadding: contentPadding ??
            EdgeInsetsDirectional.only(
              bottom: 16.h,
              top: 16.h,
              start: 16.w,
              end: 32.w,
            ),
        hintStyle: AppTextStyles.bold13.copyWith(
          color: AppColors.gray400,
        ),
        prefixIconConstraints: BoxConstraints(
          minHeight: 20.h,
          minWidth: 20.w,
        ),
        suffixIconConstraints: BoxConstraints(
          minHeight: 20.h,
          minWidth: 20.w,
        ),
      ),
    );
  }

  OutlineInputBorder getBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        width: widthBorderSide ?? 1,
        color: color ?? const Color(0xffE6E9EA),
      ),
    );
  }
}
