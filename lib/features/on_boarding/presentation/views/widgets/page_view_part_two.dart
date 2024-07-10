import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PageViewPartTwo extends StatelessWidget {
  const PageViewPartTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageViewItem(
      backGroundImage: Assets.imagesOnBoardingBackGroundGreen,
      image: Assets.imagesPineapple,
      title: Text(
        LocaleKeys.serch_and_shoping.tr(),
        style: AppTextStyles.bold23.copyWith(
          color: AppColors.gray950,
        ),
      ),
      subTitle: Column(
        children: [
          Text(
            LocaleKeys.We_offer_you_the_best_carefully_selected_fruits_Check_out
                .tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray500,
            ),
          ),
          Text(
            LocaleKeys
                    .Details_photos_and_reviews_to_make_sure_you_choose_the_fruit
                .tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray500,
            ),
          ),
          Text(
            LocaleKeys.prefect.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray500,
            ),
          ),
        ],
      ),
    );
  }
}
