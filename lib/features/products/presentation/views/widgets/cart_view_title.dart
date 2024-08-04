import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartViewTitle extends StatelessWidget {
  const CartViewTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      alignment: Alignment.center,
      color: AppColors.green1_50,
      child: Text(
        LocaleKeys.You_have_products_in_your_shopping_cart.tr(),
        style: AppTextStyles.regular13.copyWith(
          color: AppColors.green1_500,
        ),
      ),
    );
  }
}
