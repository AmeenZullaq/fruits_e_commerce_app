import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurProductsListViewItem extends StatelessWidget {
  const OurProductsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64.h,
          width: 64.w,
          padding: EdgeInsets.all(8.r),
          decoration: const BoxDecoration(
            color: Color(0xFFF3F5F7),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            Assets.imagesStrawPerryPng,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'افوكادو',
          style: AppTextStyles.semiBold13.copyWith(
            color: AppColors.gray950,
          ),
        ),
      ],
    );
  }
}
