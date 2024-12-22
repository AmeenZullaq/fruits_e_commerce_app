import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/our_products_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurProductsListView extends StatelessWidget {
  const OurProductsListView({super.key, required this.products});

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      separatorBuilder: (context, index) {
        return SizedBox(width: 9.w);
      },
      itemBuilder: (context, index) {
        return OurProductsListViewItem(
          product: products[index],
        );
      },
    );
  }
}
