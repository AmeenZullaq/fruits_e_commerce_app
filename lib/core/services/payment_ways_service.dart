import 'dart:developer';
import 'package:e_commerce_app/core/constants/app_secret_keys.dart';
import 'package:e_commerce_app/core/helper_functions/show_snack_bar.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/order_entity.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/payment_paypal_entity/payment_paypal_entity.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:logger/logger.dart';

abstract class PaymentWaysService {
  static Future<void> paypalPayment(
    BuildContext context,
    OrderEntity order,
  ) async {
    PaymentPaypalEntity paymentPaypalEntity =
        PaymentPaypalEntity.fromEntity(order);
    final addOrderCubit = context.read<AddOrderCubit>();
    log('payment paypal entity : $paymentPaypalEntity');
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: AppSecretKeys.paypalClintId,
          secretKey: AppSecretKeys.paypalSecretKey,
          transactions: [
            paymentPaypalEntity.toJson(),
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            InjectionContainer.getIt.get<Logger>().i("onSuccess: $params");
            Navigator.pop(context);
            addOrderCubit.addOrder(order: order);
            showSnackBar(
              context,
              text: LocaleKeys.proccessWasCompletedSuccessfully.tr(),
            );
          }, 
          onError: (error) {
            InjectionContainer.getIt.get<Logger>().e("onError: $error");
            Navigator.pop(context);
          },
          onCancel: () {
            InjectionContainer.getIt
                .get<Logger>()
                .i('Payment proccess cancelled !');
          },
        ),
      ),
    );
  }
}
