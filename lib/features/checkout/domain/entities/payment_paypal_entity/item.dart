import 'package:e_commerce_app/core/helper_functions/get_currency.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';

class ItemEntity {
  final String name;
  final int quantity;
  final String price;
  final String currency;

  ItemEntity({
    required this.name,
    required this.quantity,
    required this.price,
    required this.currency,
  });

  factory ItemEntity.fromEntity(CartItemEntity cartItemEntity) {
    return ItemEntity(
      name: cartItemEntity.product.name,
      quantity: cartItemEntity.quantity,
      price: cartItemEntity.product.price.toString(),
      currency: getCurrency(),
    );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };
}
