import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/sorted_icon.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OurProductsText extends StatelessWidget {
  const OurProductsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            LocaleKeys.our_products.tr(),
            style: AppTextStyles.bold16.copyWith(
              color: AppColors.gray950,
            ),
          ),
          const SortedIcon(),
        ],
      ),
    );
  }
}
