import 'package:e_commerce_app/features/checkout/presentation/views/widgets/address_section.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/payment_section.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/shipping_section.dart';
import 'package:flutter/material.dart';

List<Widget> getSteps() {
  return const [
    ShippingSection(),
    AddressSection(),
    PaymentSection(),
  ];
}
