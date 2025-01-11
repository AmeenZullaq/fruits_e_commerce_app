import 'dart:developer';
import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemBlocBuilder extends StatelessWidget {
  const CartItemBlocBuilder({
    super.key,
    required this.cartItem,
  });

  final CartItemEntity cartItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (previous, current) {
        if (current is CartItemUpdated) {
          if (current.cartItem == cartItem) {
            return true;
          }
        }
        return false;
      },
      builder: (context, state) {
        log('Rebuild cart item widget');
        return CartItem(
          cartItem: cartItem,
        );
      },
    );
  }
}
