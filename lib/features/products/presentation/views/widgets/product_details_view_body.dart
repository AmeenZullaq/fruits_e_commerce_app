import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/product_grid_view.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/product_image.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/product_info.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(
            productImage: product.imageUrl,
          ),
          SizedBox(
            height: 24.h,
          ),
          DynamicPadding(
            start: 16,
            end: 32,
            child: ProductInfo(
              product: product,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          SymetricPadding(
            horizontal: 16,
            child: ProductDetailsGridView(
              product: product,
            ),
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
      ),
    );
  }
}
