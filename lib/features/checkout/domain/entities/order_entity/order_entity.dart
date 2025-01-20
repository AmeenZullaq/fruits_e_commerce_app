import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/shipping_address_entity.dart';

class OrderEntity {
  final List<CartItemEntity> products;
  final ShippingAddressEntity shippingAddressEntity;
  final num priceOffAllProducts;
  final String uId;
  final bool payWithcash;
  final String currency;

  OrderEntity({
    required this.currency,
    required this.payWithcash,
    required this.uId,
    required this.products,
    required this.shippingAddressEntity,
    required this.priceOffAllProducts,
  });

  String getShippingCost() {
    if (payWithcash) {
      return '30';
    }
    return '0';
  }

  num getShippingDiscount() {
    return 0;
  }

  num getpriceWithShippingcost() {
    return priceOffAllProducts + num.parse(getShippingCost());
  }
}
