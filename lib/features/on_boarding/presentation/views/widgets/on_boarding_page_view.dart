import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_styles.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
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
                  text: "welcom".tr(),
                  style: AppStyles.bold23.copyWith(
                    color: AppColors.gray950,
                  ),
                ),
                TextSpan(
                  text: 'Fruit'.tr(),
                  style: AppStyles.bold23.copyWith(
                    color: AppColors.green1_500,
                  ),
                ),
                TextSpan(
                  text: 'HUB'.tr(),
                  style: AppStyles.bold23.copyWith(
                    color: AppColors.orange500,
                  ),
                ),
              ],
            ),
          ),
          subTitle: Column(
            children: [
              Text(
                'discover'.tr(),
                style: AppStyles.semiBold13.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              Text(
                'our extensive'.tr(),
                style: AppStyles.semiBold13.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              Text(
                'the best.'.tr(),
                style: AppStyles.semiBold13.copyWith(
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
            "serch and shoping".tr(),
            style: AppStyles.bold23.copyWith(
              color: AppColors.gray950,
            ),
          ),
          subTitle: Column(
            children: [
              Text(
                'We offer'.tr(),
                style: AppStyles.semiBold13.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              Text(
                'the details'.tr(),
                style: AppStyles.semiBold13.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              Text(
                'prefect'.tr(),
                style: AppStyles.semiBold13.copyWith(
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
