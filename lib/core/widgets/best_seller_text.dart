import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: Row(
        children: [
          Text(
            LocaleKeys.best_seller.tr(),
            style: AppTextStyles.bold16.copyWith(
              color: AppColors.gray950,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Text(
              LocaleKeys.more.tr(),
              style: AppTextStyles.regular13.copyWith(
                color: AppColors.gray400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
