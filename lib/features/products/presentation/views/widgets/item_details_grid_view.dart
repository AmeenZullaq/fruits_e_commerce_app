import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/products/data/models/item_model.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/details_grid_view_item.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDetailsGridView extends StatelessWidget {
  const ItemDetailsGridView({super.key});

  final List<ItemModel> items = const [
    ItemModel(
      title: LocaleKeys.general,
      subTitle: LocaleKeys.Validity,
      trailing: Assets.imagesCalendar,
    ),
    ItemModel(
      title: LocaleKeys.h100,
      subTitle: LocaleKeys.Organic,
      trailing: Assets.imagesOrginic,
    ),
    ItemModel(
      title: LocaleKeys.Calories,
      subTitle: LocaleKeys.gram,
      trailing: Assets.imagesCalories,
    ),
    ItemModel(
      title: '',
      subTitle: LocaleKeys.Review,
      trailing: Assets.imagesStare,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 163 / 80,
      ),
      itemBuilder: (context, index) {
        return DetailsGridViewItem(
          item: items[index],
        );
      },
    );
  }
}
