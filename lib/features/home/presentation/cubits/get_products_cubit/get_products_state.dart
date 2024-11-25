part of 'get_products_cubit.dart';

@immutable
sealed class GetProductsState {}

final class GetProductsInitial extends GetProductsState {}

final class GetProductsLoading extends GetProductsState {}

final class GetProductsFailure extends GetProductsState {
  final String errMessage;
  GetProductsFailure({required this.errMessage});
}

final class GetProductsSuccess extends GetProductsState {
  final List<ProductEntity> products;
  GetProductsSuccess({required this.products});
}