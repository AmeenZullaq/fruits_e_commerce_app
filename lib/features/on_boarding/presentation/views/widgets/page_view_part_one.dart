import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PageViewPartOne extends StatelessWidget {
  const PageViewPartOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageViewItem(
      isVisible: true,
      backGroundImage: Assets.imagesOnBoardingBackgroundYellow,
      image: Assets.imagesFruitBasket,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: LocaleKeys.you_welcom_in.tr(),
              style: AppTextStyles.bold23.copyWith(
                color: AppColors.gray950,
              ),
            ),
            TextSpan(
              text: LocaleKeys.Fruit.tr(),
              style: AppTextStyles.bold23.copyWith(
                color: AppColors.green1_500,
              ),
            ),
            TextSpan(
              text: LocaleKeys.HUB.tr(),
              style: AppTextStyles.bold23.copyWith(
                color: AppColors.orange500,
              ),
            ),
          ],
        ),
      ),
      subTitle: Column(
        children: [
          Text(
            LocaleKeys.discover_unique_shopping_experience_with_FruitHUB_Explore
                .tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray500,
            ),
          ),
          Text(
            LocaleKeys.our_extensive_range_of_premium_fresh_fruits_and_enjoy
                .tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray500,
            ),
          ),
          Text(
            LocaleKeys.the_best_deals_and_exceptional_quality.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray500,
            ),
          ),
        ],
      ),
    );
  }
}
