import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/order_entity.dart';

abstract class OrderRepo {
  Future<Either<Failure, void>> addOrder({
    required OrderEntity orderEntity,
  });
  Future<Either<Failure, List<OrderEntity>>> getMyOrders();
}
