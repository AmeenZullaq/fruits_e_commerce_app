import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/cart_view_body.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: LocaleKeys.cart.tr(),
        isArrowBackShow: true,
        onArrowTapped: () {
          Navigator.pop(context);
        },
      ),
      body: const SingleChildScrollView(
        child: CartViewBody(),
      ),
    );
  }
}
