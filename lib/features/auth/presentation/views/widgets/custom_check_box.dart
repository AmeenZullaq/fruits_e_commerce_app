import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isCheked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCheked = !isCheked;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 24.h,
        width: 26.w,
        decoration: BoxDecoration(
          color: isCheked ? AppColors.green1_500 : const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFFDDDFDF),
            width: 1.5,
          ),
        ),
        child: isCheked
            ? SvgPicture.asset(
                Assets.imagesCheckIcon,
              )
            : null,
      ),
    );
  }
}
