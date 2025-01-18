import 'package:e_commerce_app/features/checkout/data/models/order_product_model.dart';
import 'package:e_commerce_app/features/checkout/data/models/shipping_address_model.dart';
import 'package:e_commerce_app/features/checkout/domain/order_entity.dart';

class OrderModel {
  final String uId;
  final List<OrderProductModel> orderProductModel;
  final ShippingAddressModel shippingAddressModel;
  final String paymentMethod;
  final num priceOffAllProducts;

  OrderModel({
    required this.priceOffAllProducts, 
    required this.paymentMethod,
    required this.uId,
    required this.orderProductModel,
    required this.shippingAddressModel,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      priceOffAllProducts: json['priceOffAllProducts'],
      paymentMethod: json['paymentMethod'],
      uId: json['uId'],
      orderProductModel: json['orderProductModel'],
      shippingAddressModel: json['shippingAddressModel'],
    );
  }
  factory OrderModel.fromEntity(OrderEntity orderEntity) {
    return OrderModel(
      priceOffAllProducts: orderEntity.priceOffAllProducts,
      paymentMethod: orderEntity.paymentMethod,
      uId: orderEntity.uId,
      orderProductModel: orderEntity.products
          .map((e) => OrderProductModel.fromEntity(e))
          .toList(),
      shippingAddressModel: ShippingAddressModel.fromEntity(
        orderEntity.shippingAddressEntity,
      ),
    );
  }

  toJson() {
    return {
      'priceOffAllProducts': priceOffAllProducts,
      'paymentMethod': paymentMethod,
      'uId': uId,
      'orderProductModel': orderProductModel.map((e) => e.toJson()).toList(),
      'shippingAddressModel': shippingAddressModel.toJson(),
    };
  }
}
