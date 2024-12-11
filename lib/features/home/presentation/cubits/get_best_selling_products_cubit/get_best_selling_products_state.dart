part of 'get_best_selling_products_cubit.dart';

@immutable
sealed class GetBestSellingProductsState {}

final class GetBestSellingProductsInitial extends GetBestSellingProductsState {}

final class GetBestSellingProductsLoading extends GetBestSellingProductsState {}

final class GetBestSellingProductsFailure extends GetBestSellingProductsState {
  final String errMessage;

  GetBestSellingProductsFailure({required this.errMessage});
}

final class GetBestSellingProductsSuccess extends GetBestSellingProductsState {
  final List<ProductEntity> products;

  GetBestSellingProductsSuccess({required this.products});
}
