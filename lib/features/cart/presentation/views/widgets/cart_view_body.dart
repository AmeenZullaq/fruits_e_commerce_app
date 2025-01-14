import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/views/widgets/cart_button.dart';
import 'package:e_commerce_app/features/cart/presentation/views/widgets/cart_list_view.dart';
import 'package:e_commerce_app/features/cart/presentation/views/widgets/cart_view_title.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              buildAppBar(
                context,
                title: LocaleKeys.cart.tr(),
                isArrowBackShow: false,
                onArrowTapped: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              const CartViewTitle(),
              SizedBox(
                height: 16.h,
              ),
              context.watch<CartCubit>().cartProducts.isEmpty
                  ? const SizedBox()
                  : CartListView(
                      cartProducts: context.read<CartCubit>().cartProducts,
                    ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: CartButton(),
        ),
      ],
    );
  }
}
