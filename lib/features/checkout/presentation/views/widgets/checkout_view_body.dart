import 'package:e_commerce_app/core/helper_functions/checkout_validation.dart';
import 'package:e_commerce_app/core/helper_functions/get_steps.dart';
import 'package:e_commerce_app/core/services/payment_ways_service.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/payment_paypal_entity/payment_paypal_entity.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key, required this.cartEntity});

  final CartEntity cartEntity;

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  int currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    final AddOrderCubit addOrderCubit = context.read<AddOrderCubit>();
    return AllPadding(
      all: 20,
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          CheckoutSteps(
            currentStepIndex: currentStepIndex,
            pageController: addOrderCubit.pageController,
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: PageView.builder(
              itemCount: getSteps().length,
              controller: addOrderCubit.pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                currentStepIndex = index;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return getSteps()[index];
              },
            ),
          ),
          CustomButton(
            text: currentStepIndex == 2
                ? LocaleKeys.payWithPaypal.tr()
                : LocaleKeys.next.tr(),
            onTap: () {
              if (currentStepIndex == 0) {
                validateShippingSection(addOrderCubit, context);
              } else if (currentStepIndex == 1) {
                validateAddressSection(addOrderCubit);
              } else {
                context.read<AddOrderCubit>().cartEntity = widget.cartEntity;
                // context.read<AddOrderCubit>().addOrder();

                PaymentPaypalEntity paymentPaypalEntity =
                    PaymentPaypalEntity.fromEntity(
                  context.read<AddOrderCubit>().createOrder(),
                );

                PaymentWaysService.paypalPayment(context, paymentPaypalEntity);
              }
            },
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
