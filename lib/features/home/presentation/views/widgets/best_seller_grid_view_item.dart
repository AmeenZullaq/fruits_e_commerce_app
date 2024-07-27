import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class BestSellerGridViewItem extends StatelessWidget {
  const BestSellerGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: const Color(0xFFF3F5F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            Assets.imagesHeart,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              fit: BoxFit.fill,
              height: 105.h,
              width: 114.w,
              Assets.imagesStrawPerryPng,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            LocaleKeys.straw_perry.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray950,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '20${LocaleKeys.pound.tr()} ',
                style: AppTextStyles.bold16.copyWith(
                  color: AppColors.orange500,
                ),
              ),
              Text(
                "/ ${LocaleKeys.kilo.tr()}",
                style: AppTextStyles.semiBold13.copyWith(
                  color: AppColors.orange300,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 18.r,
                backgroundColor: AppColors.green1_500,
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
