import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/order_entity.dart';

class DetailsEntity {
  final String subtotal;
  final String shipping;
  final int shippingDiscount;

  DetailsEntity({
    required this.subtotal,
    required this.shipping,
    required this.shippingDiscount,
  });

  factory DetailsEntity.fromEntity(OrderEntity order) {
    return DetailsEntity(
      subtotal: order.priceOffAllProducts.toString(),
      shipping: order.getShippingCost(),
      shippingDiscount: order.getShippingDiscount().toInt(),
    );
  }

  Map<String, dynamic> toJson() => {
        'subtotal': subtotal,
        'shipping': shipping,
        'shipping_discount': shippingDiscount,
      };
}
