import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/core/helper_functions/get_cart_product.dart';
import 'package:e_commerce_app/core/helper_functions/is_product_exist.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  List<CartItemEntity> cartProducts = [];
  num priceOfAllProducts = 0;

  void addProductToCart({
    required ProductEntity productEntity,
    required int selectedCountOfProduct,
  }) {
    priceOfAllProducts =
        priceOfAllProducts + (productEntity.price * selectedCountOfProduct);
    bool isProductExist = isExist(productEntity, cartProducts);
    if (isProductExist) {
      CartItemEntity cartProduct = getCartProduct(productEntity, cartProducts)!;
      cartProduct.increaseQuantity(
        countIncreasing: selectedCountOfProduct,
      );

      emit(
        CartProductAdded(),
      );
    } else {
      CartItemEntity cartItem = CartItemEntity(
        product: productEntity,
        quantity: selectedCountOfProduct,
      );
      cartProducts.add(cartItem);
      emit(
        CartProductAdded(),
      );
    }
  }

  void deleteProductFromCart({
    required CartItemEntity cartItem,
  }) {
    cartProducts.removeWhere(
      (element) => element == cartItem,
    );
    priceOfAllProducts =
        priceOfAllProducts - (cartItem.product.price * cartItem.quantity);
    emit(
      CartProductRemoved(),
    );
  }

  // void increaseNumberProductInCart({
  //   required CartItemEntity cartItem,
  // }) {
  //   cartItem.count++;
  //   priceOfAllProducts = priceOfAllProducts + cartItem.product.price;
  //   emit(
  //     ModifyNumberProductInCart(),
  //   );
  // }

  // void decreaseNumberProductInCart({
  //   required CartItemEntity cartItem,
  // }) {
  //   if (cartItem.count > 0) {
  //     cartItem.count--;
  //     priceOfAllProducts = priceOfAllProducts - cartItem.product.price;
  //     emit(
  //       ModifyNumberProductInCart(),
  //     );
  //   }
  // }
}
