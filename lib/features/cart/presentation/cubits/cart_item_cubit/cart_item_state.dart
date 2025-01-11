part of 'cart_item_cubit.dart';

@immutable
sealed class CartItemState {}

final class CartItemInitial extends CartItemState {}

final class CartItemUpdated extends CartItemState {
  final CartItemEntity cartItem;

  CartItemUpdated({required this.cartItem});
}