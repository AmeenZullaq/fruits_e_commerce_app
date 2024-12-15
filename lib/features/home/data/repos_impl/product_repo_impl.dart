import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/core/error/server_failure.dart';
import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/core/utils/endoints.dart';
import 'package:e_commerce_app/features/home/data/models/product_model.dart';
import 'package:e_commerce_app/features/home/domain/entities/product_entity.dart';
import 'package:e_commerce_app/features/home/domain/repos/product_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProductRepoImpl extends ProductRepo {
  final DatabaseService databaseService;

  ProductRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      final data = await databaseService.getData(
        path: Endpoints.products,
      );
      List<ProductEntity> products = [];
      for (var element in data) {
        products.add(ProductModel.fromJson(element).toEntity());
      }
      return right(products);
    } catch (e) {
      if (e is FirebaseException) {
        return left(
          ServerFailure.fromFirestore(e),
        );
      } else {
        return left(
          ServerFailure(errMessage: 'Failed to get products'),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      final data = await databaseService.getData(
        path: Endpoints.products,
        queryParameters: {
          'orderBy': 'sellingCount',
          'limit': 10,
          'descending': true,
        },
      );
      List<ProductEntity> products = [];
      for (var element in data) {
        products.add(ProductModel.fromJson(element).toEntity());
      }
      log('====================================${products[0].imageUrl}');
      return right(products);
    } catch (e) {
      if (e is FirebaseException) {
        return left(
          ServerFailure.fromFirestore(e),
        );
      } else {
        log('====================================$e');
        return left(
          ServerFailure(errMessage: 'Failed to get products'),
        );
      }
    }
  }
}
