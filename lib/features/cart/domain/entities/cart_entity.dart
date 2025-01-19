import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartProducts;
  final num priceOfAllProducts;

  CartEntity({
    required this.cartProducts,
    required this.priceOfAllProducts,
  });
}
