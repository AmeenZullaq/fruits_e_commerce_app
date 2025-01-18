import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:e_commerce_app/features/checkout/domain/shipping_address_entity.dart';

class OrderEntity {
  final List<CartItemEntity> products;
  final String paymentMethod;
  final ShippingAddressEntity shippingAddressEntity;
  final num priceOffAllProducts;
  final String uId;

  OrderEntity({
    required this.uId,
    required this.products,
    required this.paymentMethod,
    required this.shippingAddressEntity,
    required this.priceOffAllProducts,
  });
}
