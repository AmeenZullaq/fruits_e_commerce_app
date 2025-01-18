import 'package:e_commerce_app/features/checkout/data/models/order_model.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:logger/logger.dart';

abstract class PaymentWaysService {
  static Future<void> paypalPayment(
    BuildContext context,
    OrderModel orderEntity,
  ) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: "",
          secretKey: "",
          transactions: const [
            {
              "amount": {
                "total": '70',
                "currency": "USD",
                "details": {
                  "subtotal": '70',
                  "shipping": '0',
                  "shipping_discount": 0
                }
              },
              "description": "The payment transaction description.",
              // "payment_options": {
              //   "allowed_payment_method":
              //       "INSTANT_FUNDING_SOURCE"
              // },
              "item_list": {
                "items": [
                  {
                    "name": "Apple",
                    "quantity": 4,
                    "price": '5',
                    "currency": "USD"
                  },
                  {
                    "name": "Pineapple",
                    "quantity": 5,
                    "price": '10',
                    "currency": "USD"
                  }
                ],

                // shipping address is not required though
                //   "shipping_address": {
                //     "recipient_name": "tharwat",
                //     "line1": "Alexandria",
                //     "line2": "",
                //     "city": "Alexandria",
                //     "country_code": "EG",
                //     "postal_code": "21505",
                //     "phone": "+00000000",
                //     "state": "Alexandria"
                //  },
              }
            }
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
