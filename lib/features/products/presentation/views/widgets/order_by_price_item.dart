import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderByPriceItem extends StatefulWidget {
  const OrderByPriceItem({
    super.key,
    required this.text,
    required this.isChecked,
  });

  final String text;
  final bool isChecked;

  @override
  State<OrderByPriceItem> createState() => _OrderByPriceItemState();
}

class _OrderByPriceItemState extends State<OrderByPriceItem> {
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
          child: widget.isChecked
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
          widget.text.tr(),
          style: AppTextStyles.bold13.copyWith(
            color: AppColors.gray950,
          ),
        ),
      ],
    );
  }
}
