import 'package:e_commerce_app/core/helper_functions/showing_snack_bar.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void validateAddressSection(AddOrderCubit addOrderCubit) {
  if (addOrderCubit.addressSectionFormKey.currentState!.validate()) {
    addOrderCubit.pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  } else {
    addOrderCubit.autovalidateMode = AutovalidateMode.always;
  }
}

void validateShippingSection(
  AddOrderCubit addOrderCubit,
  BuildContext context,
) {
  if (addOrderCubit.isSelectedPaymentMethod) {
    addOrderCubit.pageController.nextPage(
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
