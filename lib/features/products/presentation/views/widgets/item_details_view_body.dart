import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/Item_rating.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/item_description.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/item_details_grid_view.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/item_details_image.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/item_name_and_price.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ItemDetailsImage(),
        SizedBox(
          height: 24.h,
        ),
        const DynamicPadding(
          start: 16,
          end: 32,
          child: ItemNameAndPrice(),
        ),
        SizedBox(
          height: 8.h,
        ),
        const StartPadding(
          start: 16,
          child: ItemRating(),
        ),
        SizedBox(
          height: 8.h,
        ),
        const StartPadding(
          start: 16,
          child: ItemDescription(),
        ),
        SizedBox(
          height: 16.h,
        ),
        const SymetricPadding(
          horizontal: 16,
          child: ItemDetailsGridView(),
        ),
        SizedBox(
          height: 24.h,
        ),
        SymetricPadding(
          horizontal: 16,
          child: CustomButton(
            text: LocaleKeys.add_to_cart.tr(),
            onTap: () {},
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}
