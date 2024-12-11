import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/home/domain/entities/product_entity.dart';
import 'package:e_commerce_app/features/home/domain/repos/product_repo.dart';
import 'package:meta/meta.dart';
part 'get_best_selling_products_state.dart';

class GetBestSellingProductsCubit extends Cubit<GetBestSellingProductsState> {
  GetBestSellingProductsCubit(this.productRepo)
      : super(GetBestSellingProductsInitial());

  final ProductRepo productRepo;

  Future<void> getBestSellingProducts() async {
    emit(
      GetBestSellingProductsLoading(),
    );
    var result = await productRepo.getBestSellingProducts();
    result.fold(
      (failure) {
        emit(
          GetBestSellingProductsFailure(errMessage: failure.errMessage),
        );
      },
      (products) {
        emit(
          GetBestSellingProductsSuccess(products: products),
        );
      },
    );
  }
}
