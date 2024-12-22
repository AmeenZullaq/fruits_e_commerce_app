import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/product_details_view_body.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailsViewBody(
        product: product,
      ),
    );
  }
}
