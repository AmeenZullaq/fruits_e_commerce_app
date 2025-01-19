import 'package:e_commerce_app/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;
  int quantity;

  CartItemEntity({
    required this.product,
    this.quantity = 0,
  });

  num getTotalPric() {
    return quantity * product.price;
  }

  num getTotalwight() {
    return quantity * product.unitWeight;
  }

  void increaseQuantity({required int countIncreasing}) {
    quantity = quantity + countIncreasing;
  }

  void decreaseQuantity({required int countDecreasing}) {
    quantity = quantity - countDecreasing;
  }
}
