import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/views/widgets/cart_item_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
    required this.cartProducts,
  });

  final List<CartItemEntity> cartProducts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: context.read<CartCubit>().cartProducts.length,
      separatorBuilder: (context, index) {
        return const DynamicPadding(
          top: 3,
          bottom: 4,
          child: Divider(
            color: Color(0xFFF1F1F5),
          ),
        );
      },
      itemBuilder: (context, index) {
        return CartItemBlocBuilder(
          cartItem: cartProducts[index],
        );
      },
    );
  }
}


