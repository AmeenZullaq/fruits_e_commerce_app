import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/add_order_cubit_bloc_consumer.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});

  final CartEntity cartEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InjectionContainer.getIt.get<AddOrderCubit>(),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: LocaleKeys.shipping.tr(),
          isArrowBackShow: true,
        ),
        body: AddOrderCubitBlocConsumer(
          child: CheckoutViewBody(
            cartEntity: cartEntity,
          ),
        ),
      ),
    );
  }
}
