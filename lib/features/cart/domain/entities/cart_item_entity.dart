import 'package:e_commerce_app/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;
  int count;

  CartItemEntity({
    required this.product,
    this.count = 0,
  });

  num getTotalPric() {
    return count * product.price;
  }

  num getTotalwight() {
    return count * product.unitWeight;
  }

  void increaseCount({required int countIncreasing}) {
    count = count + countIncreasing;
  }

  void decreaseCount({required int countDecreasing}) {
    count = count - countDecreasing;
  }
}
