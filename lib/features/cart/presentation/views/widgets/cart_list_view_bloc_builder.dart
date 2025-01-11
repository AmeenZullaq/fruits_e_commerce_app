import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/views/widgets/cart_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartListViewBlocBuilder extends StatelessWidget {
  const CartListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartProductAdded || state is CartProductRemoved) {
          return CartListView(
            cartProducts: context.read<CartCubit>().cartProducts,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
