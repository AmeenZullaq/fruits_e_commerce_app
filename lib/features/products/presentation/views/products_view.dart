import 'package:e_commerce_app/features/products/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/products_view_body.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          InjectionContainer.getIt.get<GetProductsCubit>()..getProducts(),
      child: const ProductsViewBody(),
    );
  }
}
