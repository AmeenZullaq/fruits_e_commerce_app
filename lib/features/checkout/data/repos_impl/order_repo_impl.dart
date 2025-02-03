import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/constants/endoints.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/core/error/server_failure.dart';
import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/features/checkout/data/models/order_model.dart';
import 'package:e_commerce_app/features/checkout/domain/entities/order_entity/order_entity.dart';
import 'package:e_commerce_app/features/checkout/domain/repos/order_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OrderRepoImpl extends OrderRepo {
  final DatabaseService firestoreService;

  OrderRepoImpl({required this.firestoreService});
  @override
  Future<Either<Failure, void>> addOrder({
    required OrderEntity orderEntity,
  }) async {
    try {
      await firestoreService.addData(
        path: Endpoints.orders,
        data: OrderModel.fromEntity(orderEntity).toJson(),
      );
      return right(null);
    } catch (e) {
      if (e is FirebaseException) {
        return left(
          ServerFailure.fromFirestore(e),
        );
      } else {
        return left(
          ServerFailure(errMessage: 'Failed to add order'),
        );
      }
    }
  }
}
