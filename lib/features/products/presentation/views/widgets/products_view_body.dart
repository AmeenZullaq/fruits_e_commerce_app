import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_grid_view.dart';
import 'package:e_commerce_app/core/widgets/best_seller_text.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/our_products_list_view.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/our_products_text.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildAppBar(
          context,
          title: LocaleKeys.products.tr(),
          isNotificationsShow: true,
        ),
        SizedBox(
          height: 16.h,
        ),
        const SymetricPadding(
          horizontal: 16,
          // child: SearchField(),
        ),
        SizedBox(
          height: 16.h,
        ),
        const OurProductsText(),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          height: 89.h,
          child: const StartPadding(
            start: 16,
            child: OurProductsListView(),
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        const BestSellerText(),
        const SymetricPadding(
          horizontal: 16,
          child: CustomGridView(),
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
