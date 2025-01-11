import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemInitial());

  void increaseNumberProductInCart({
    required CartItemEntity cartItem,
  }) {
    cartItem.count++;
    emit(
      CartItemUpdated(cartItem: cartItem),
    );
  }

  void decreaseNumberProductInCart({
    required CartItemEntity cartItem,
  }) {
    if (cartItem.count > 0) {
      cartItem.count--;
      emit(
        CartItemUpdated(cartItem: cartItem),
      );
    }
  }
}
