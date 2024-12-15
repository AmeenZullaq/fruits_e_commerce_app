import 'package:e_commerce_app/core/widgets/fruit_item.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/home/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    this.onItemTapped,
    required this.products,
  });

  final void Function()? onItemTapped;
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 8.h,
          childAspectRatio: 163.w / 214.h,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: onItemTapped,
            child: FruitItem(
              product: products[index],
            ),
          );
        },
      ),
    );
  }
}
