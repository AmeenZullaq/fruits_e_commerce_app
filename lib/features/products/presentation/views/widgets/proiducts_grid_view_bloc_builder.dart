import 'package:e_commerce_app/core/helper_functions/get_dummy_product.dart';
import 'package:e_commerce_app/core/widgets/custom_error_widget.dart';
import 'package:e_commerce_app/core/widgets/products_grid_view.dart';
import 'package:e_commerce_app/features/products/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsGridViewBlocBuilder extends StatelessWidget {
  const ProductsGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsCubit, GetProductsState>(
      builder: (context, state) {
        if (state is GetProductsFailure) {
          return CustomErrorWidget(text: state.errMessage);
        } else if (state is GetProductsSuccess) {
          return ProductsGridView(
            products: state.products,
          );
        } else {
          return Skeletonizer(
            enabled: true,
            child: ProductsGridView(
              products: getdummyProducts(),
            ),
          );
        }
      },
    );
  }
}
