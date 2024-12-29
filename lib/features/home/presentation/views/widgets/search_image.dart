import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SearchImage extends StatelessWidget {
  const SearchImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          Assets.imagesSearch,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          LocaleKeys.search.tr(),
          style: AppTextStyles.bold16.copyWith(
            color: AppColors.gray600,
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          LocaleKeys.Sorry_this_information_is_not_available_for_the_moment
              .tr(),
          style: AppTextStyles.regular13.copyWith(
            color: AppColors.gray400,
          ),
        ),
      ],
    );
  }
}
