import 'package:e_commerce_app/features/products/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:e_commerce_app/core/helper_functions/get_dummy_product.dart';
import 'package:e_commerce_app/core/widgets/custom_error_widget.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/our_products_list_view.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OurProductsListViewBlocBuilder extends StatelessWidget {
  const OurProductsListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          InjectionContainer.getIt.get<GetProductsCubit>()..getProducts(),
      child: BlocBuilder<GetProductsCubit, GetProductsState>(
        builder: (context, state) {
          if (state is GetProductsSuccess) {
            return OurProductsListView(
              products: state.products,
            );
          } else if (state is GetProductsFailure) {
            return CustomErrorWidget(
              text: state.errMessage,
            );
          }
          return Skeletonizer(
            child: Skeletonizer(
              enabled: true,
              child: OurProductsListView(
                products: getdummyProducts(),
              ),
            ),
          );
        },
      ),
    );
  }
}
