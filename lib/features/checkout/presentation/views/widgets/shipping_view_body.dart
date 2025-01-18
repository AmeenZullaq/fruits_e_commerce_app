import 'package:e_commerce_app/core/helper_functions/get_steps.dart';
import 'package:e_commerce_app/core/helper_functions/showing_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/checkout_cubit/checkout_cubit.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingViewBody extends StatefulWidget {
  const ShippingViewBody({super.key});

  @override
  State<ShippingViewBody> createState() => _ShippingViewBodyState();
}

class _ShippingViewBodyState extends State<ShippingViewBody> {
  int currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    final CheckoutCubit checkoutCubit = context.read<CheckoutCubit>();
    return AllPadding(
      all: 20,
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          CheckoutSteps(
            currentStepIndex: currentStepIndex,
            pageController: checkoutCubit.pageController,
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: PageView.builder(
              itemCount: getSteps().length,
              controller: checkoutCubit.pageController,
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
                validateShippingSection(checkoutCubit, context);
              }
              if (currentStepIndex == 1) {
                validateAddressSection(checkoutCubit);
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

  void validateAddressSection(CheckoutCubit checkoutCubit) {
    if (checkoutCubit.addressSectionFormKey.currentState!.validate()) {
      checkoutCubit.pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      checkoutCubit.autovalidateMode = AutovalidateMode.always;
    }
  }

  void validateShippingSection(
      CheckoutCubit checkoutCubit, BuildContext context) {
    if (checkoutCubit.isSelectedPaymentMethod) {
      checkoutCubit.pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      showingSnackBar(
        context,
        text: LocaleKeys.pleaseSelectPaymentMethod.tr(),
      );
    }
  }
}
