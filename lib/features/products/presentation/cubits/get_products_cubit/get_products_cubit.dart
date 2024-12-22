import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/core/repos/product_repo.dart';
import 'package:meta/meta.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this.productRepo) : super(GetProductsInitial());

  final ProductRepo productRepo;

  Future<void> getProducts() async {
    emit(
      GetProductsLoading(),
    );
    var result = await productRepo.getProducts();
    result.fold(
      (failure) {
        emit(
          GetProductsFailure(errMessage: failure.errMessage),
        );
      },
      (products) {
        emit(
          GetProductsSuccess(products: products),
        );
      },
    );
  }

  Future<void> getOrderedProducts({
    bool isDescending = false,
    bool orderByAlphabet = false,
  }) async {
    emit(
      GetProductsLoading(),
    );
    final resulte = await productRepo.getOrderedProducts(
      isDescending: isDescending,
      orderByAlphabet: orderByAlphabet,
    );

    resulte.fold(
      (failure) {
        emit(
          GetProductsFailure(errMessage: failure.errMessage),
        );
      },
      (products) {
        emit(
          GetProductsSuccess(products: products),
        );
      },
    );
  }
}
