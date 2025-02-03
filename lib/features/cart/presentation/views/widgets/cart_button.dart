import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/core/helper_functions/show_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return DynamicPadding(
          bottom: 24,
          end: 16,
          start: 16,
          child: CustomButton(
            text:
                '${LocaleKeys.payment.tr()} ${context.watch<CartCubit>().priceOfAllProducts} ${LocaleKeys.pound.tr()}',
            onTap: () {
              if (context.read<CartCubit>().cartProducts.isEmpty) {
                showSnackBar(
                  context,
                  text: LocaleKeys.thereAreNoProductsInheart.tr(),
                );
              } else {
                Navigator.of(context).pushNamed(
                  AppRoutes.checkoutView,
                  arguments: CartEntity(
                    cartProducts: context.read<CartCubit>().cartProducts,
                    priceOfAllProducts:
                        context.read<CartCubit>().priceOfAllProducts,
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}
