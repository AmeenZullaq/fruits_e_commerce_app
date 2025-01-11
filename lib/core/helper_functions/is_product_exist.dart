import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';

bool isExist(
  ProductEntity productEntity,
  List<CartItemEntity> cartProducts,
) {
  if (cartProducts.isEmpty) {
    return false;
  } else {
    for (var element in cartProducts) {
      if (element.product.code == productEntity.code) {
        return true;
      }
    }
    return false;
  }
}
