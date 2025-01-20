import 'package:e_commerce_app/features/checkout/data/models/order_product_model.dart';
import 'package:e_commerce_app/features/checkout/data/models/shipping_address_model.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/order_entity.dart';

class OrderModel {
  final String uId;
  final List<OrderProductModel> orderProductModel;
  final ShippingAddressModel shippingAddressModel;
  final num priceOffAllProducts;

  OrderModel({
    required this.priceOffAllProducts,
    required this.uId,
    required this.orderProductModel,
    required this.shippingAddressModel,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      priceOffAllProducts: json['priceOffAllProducts'],
      uId: json['uId'],
      orderProductModel: json['orderProductModel'],
      shippingAddressModel: json['shippingAddressModel'],
    );
  }
  factory OrderModel.fromEntity(OrderEntity orderEntity) {
    return OrderModel(
      priceOffAllProducts: orderEntity.priceOffAllProducts,
      uId: orderEntity.uId,
      orderProductModel: orderEntity.products
          .map((e) => OrderProductModel.fromEntity(e))
          .toList(),
      shippingAddressModel: ShippingAddressModel.fromEntity(
        orderEntity.shippingAddressEntity,
      ),
    );
  }

  // toEntity() {
  //   return OrderEntity(
  //     uId: uId,
  //     products: orderProductModel,
  //     paymentMethod: paymentMethod,
  //     shippingAddressEntity: shippingAddressEntity,
  //     priceOffAllProducts: priceOffAllProducts,
  //   );
  // }

  toJson() {
    return {
      'priceOffAllProducts': priceOffAllProducts,
      'uId': uId,
      'orderProductModel': orderProductModel.map((e) => e.toJson()).toList(),
      'shippingAddressModel': shippingAddressModel.toJson(),
    };
  }
}
