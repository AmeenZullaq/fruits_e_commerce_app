import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderByPriceItem extends StatelessWidget {
  const OrderByPriceItem({
    super.key,
    required this.text,
    required this.isChecked,
  });

  final String text;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 18.h,
          width: 18.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.gray400),
          ),
          child: isChecked
              ? CircleAvatar(
                  radius: 5.r,
                  backgroundColor: AppColors.green1_500,
                )
              : null,
        ),
        SizedBox(
          width: 16.w,
        ),
        Text(
          text.tr(),
          style: AppTextStyles.bold13.copyWith(
            color: AppColors.gray950,
          ),
        ),
      ],
    );
  }
}
