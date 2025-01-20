import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final AddOrderCubit addOrderCubit = context.read<AddOrderCubit>();
    return Column(
      children: [
        ShippingItem(
          onTap: () {
            addOrderCubit.isSelectedPaymentMethod = true;
            selectedIndex = 1;
            addOrderCubit.payWithcash = true;
            setState(() {});
          },
          isSelected: selectedIndex == 1,
          title: LocaleKeys.paymentWhenRecive.tr(),
          subtitle: LocaleKeys.deliveryFromPlace.tr(),
          tralling:
              '${context.read<CartCubit>().priceOfAllProducts + 40} ${LocaleKeys.pound.tr()}',
        ),
        SizedBox(
          height: 12.h,
        ),
        ShippingItem(
          onTap: () {
            addOrderCubit.isSelectedPaymentMethod = true;
            selectedIndex = 2;
            setState(() {});
          },
          isSelected: selectedIndex == 2,
          title: LocaleKeys.buyNowAndPayLater.tr(),
          subtitle: LocaleKeys.pleaseSelectPaymentMethod.tr(),
          tralling:
              '${context.read<CartCubit>().priceOfAllProducts} ${LocaleKeys.pound.tr()}',
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
