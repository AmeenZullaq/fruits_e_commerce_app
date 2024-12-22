import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts();
  Future<Either<Failure, List<ProductEntity>>> getOrderedProducts({
    required bool isDescending,
    required bool orderByAlphabet,
  });
}
