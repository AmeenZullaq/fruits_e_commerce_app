import 'package:e_commerce_app/core/helper_functions/get_currency.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/order_entity.dart';
import 'details.dart';

class AmountEntity {
  final String total;
  final String currency;
  final DetailsEntity details;

  AmountEntity({
    required this.total,
    required this.currency,
    required this.details,
  });

  factory AmountEntity.fromEntity(OrderEntity order) {
    return AmountEntity(
      total: order.getpriceWithShippingcost().toString(),
      currency: getCurrency(),
      details: DetailsEntity.fromEntity(order),
    );
  }

  Map<String, dynamic> toJson() => {
        'total': total,
        'currency': currency,
        'details': details.toJson(),
      };
}
