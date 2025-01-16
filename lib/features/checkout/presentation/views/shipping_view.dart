import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/checkout_cubit/checkout_cubit.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/shipping_view_body.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShippingView extends StatelessWidget {
  const ShippingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InjectionContainer.getIt.get<CheckoutCubit>(),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: LocaleKeys.shipping.tr(),
          isArrowBackShow: true,
        ),
        body: const ShippingViewBody(),
      ),
    );
  }
}
