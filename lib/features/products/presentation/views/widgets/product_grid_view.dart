import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/features/products/data/models/item_model.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/avg_reviews_rating.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/calories.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/expiration.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/organic.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsGridView extends StatefulWidget {
  const ProductDetailsGridView({super.key, required this.product});

  final ProductEntity product;

  @override
  State<ProductDetailsGridView> createState() => _ProductDetailsGridViewState();
}

class _ProductDetailsGridViewState extends State<ProductDetailsGridView> {
  final List<ItemModel> items = [
    ItemModel(
      title: LocaleKeys.month.tr(),
      subTitle: LocaleKeys.Validity.tr(),
      trailing: Assets.imagesCalendar,
    ),
    ItemModel(
      title: LocaleKeys.h100.tr(),
      subTitle: LocaleKeys.Organic.tr(),
      trailing: Assets.imagesOrginic,
    ),
    ItemModel(
      title: LocaleKeys.Calories.tr(),
      subTitle: LocaleKeys.gram.tr(),
      trailing: Assets.imagesCalories,
    ),
    ItemModel(
      title: ''.tr(),
      subTitle: LocaleKeys.Review.tr(),
      trailing: Assets.imagesStare,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Expiration(
                item: items[0],
                expirationMonths: widget.product.expirationMonths,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Organic(
                item: items[1],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            Expanded(
              child: Calories(
                item: items[2],
                numberOfCalories: widget.product.numberOfCalories,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: AvgReviewsRating(
                item: items[3],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
