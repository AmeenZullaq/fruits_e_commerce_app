import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/order_entity.dart';
import 'item.dart';

class ItemList {
  List<ItemEntity> items;

  ItemList({
    required this.items,
  });

  factory ItemList.fromEntity(OrderEntity order) {
    return ItemList(
      items: order.products
          .map(
            (e) => ItemEntity.fromEntity(e),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'items': items.map((e) => e.toJson()).toList(),
      };
}
