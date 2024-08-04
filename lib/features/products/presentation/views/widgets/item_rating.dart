import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ItemRating extends StatelessWidget {
  const ItemRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          height: 17.h,
          width: 17.w,
          fit: BoxFit.fill,
          Assets.imagesStare,
        ),
        SizedBox(
          width: 9.w,
        ),
        Text(
          '4.5',
          style: AppTextStyles.semiBold13.copyWith(
            color: const Color(0xff111719),
          ),
        ),
        SizedBox(
          width: 9.w,
        ),
        Text(
          '(30+)',
          style: AppTextStyles.semiBold13.copyWith(
            color: const Color(0xff9796A1),
          ),
        ),
        SizedBox(
          width: 9.w,
        ),
        Text(
          LocaleKeys.Review.tr(),
          style: AppTextStyles.bold13.copyWith(
            color: AppColors.green1_500,
          ),
        ),
      ],
    );
  }
}
