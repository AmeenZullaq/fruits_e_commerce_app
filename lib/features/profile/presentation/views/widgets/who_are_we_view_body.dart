import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhoAreWeViewBody extends StatelessWidget {
  const WhoAreWeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildAppBar(
          context,
          title: LocaleKeys.Who_are_we.tr(),
          isArrowBackShow: true,
        ),
        Text(
          LocaleKeys.who_are_we_1.tr(),
          textAlign: TextAlign.justify,
          style: AppTextStyles.semiBold13.copyWith(
            color: AppColors.gray400,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          LocaleKeys.who_are_we_2.tr(),
          textAlign: TextAlign.justify,
          style: AppTextStyles.semiBold13.copyWith(
            color: AppColors.gray500,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          LocaleKeys.who_are_we_3.tr(),
          textAlign: TextAlign.justify,
          style: AppTextStyles.semiBold13.copyWith(
            color: AppColors.gray400,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          LocaleKeys.who_are_we_4.tr(),
          textAlign: TextAlign.justify,
          style: AppTextStyles.regular13.copyWith(
            color: AppColors.gray400,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          LocaleKeys.who_are_we_5.tr(),
          textAlign: TextAlign.justify,
          style: AppTextStyles.regular13.copyWith(
            color: AppColors.gray400,
          ),
        ),
      ],
    );
  }
}
