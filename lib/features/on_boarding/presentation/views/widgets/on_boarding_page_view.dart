import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          backGroundImage: Assets.imagesOnBoardingBackgroundYellow,
          image: Assets.imagesFruitBasket,
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocaleKeys.welcom.tr(),
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
                LocaleKeys.discover.tr(),
                style: AppTextStyles.semiBold13.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              Text(
                LocaleKeys.our_extensive.tr(),
                style: AppTextStyles.semiBold13.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              Text(
                LocaleKeys.the_best.tr(),
                style: AppTextStyles.semiBold13.copyWith(
                  color: AppColors.gray500,
                ),
              ),
            ],
          ),
        ),
        PageViewItem(
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
                LocaleKeys.We_offer.tr(),
                style: AppTextStyles.semiBold13.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              Text(
                LocaleKeys.the_details.tr(),
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
        ),
      ],
    );
  }
}
