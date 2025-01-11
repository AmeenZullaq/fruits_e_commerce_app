import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';

CartItemEntity? getCartProduct(
  ProductEntity productEntity,
  List<CartItemEntity> cartProducts,
) {
  for (var element in cartProducts) {
    if (element.product.code == productEntity.code) {
      return element;
    }
  }
  return null;
}
