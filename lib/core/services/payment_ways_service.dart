import 'package:e_commerce_app/core/constants/app_secret_keys.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/payment_paypal_entity/payment_paypal_entity.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:logger/logger.dart';

abstract class PaymentWaysService {
  static Future<void> paypalPayment(
    BuildContext context,
    PaymentPaypalEntity paymentPaypalEntity,
  ) async {
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
