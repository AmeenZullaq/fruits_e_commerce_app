import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/order_entity.dart';
import 'amount.dart';
import 'item_list.dart';

class PaymentPaypalEntity {
  final AmountEntity amount;
  final String description;
  final ItemList itemList;

  PaymentPaypalEntity({
    required this.amount,
    required this.description,
    required this.itemList,
  });

  factory PaymentPaypalEntity.fromEntity(OrderEntity order) {
    return PaymentPaypalEntity(
      amount: AmountEntity.fromEntity(order),
      description: "The payment transaction description.",
      itemList: ItemList.fromEntity(order),
    );
  }

  Map<String, dynamic> toJson() => {
        'amount': amount.toJson(),
        'description': description,
        'item_list': itemList.toJson(),
      };
}
