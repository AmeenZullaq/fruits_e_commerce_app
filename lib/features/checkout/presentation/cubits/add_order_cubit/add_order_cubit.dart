import 'package:e_commerce_app/core/helper_functions/get_user.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:e_commerce_app/features/checkout/domain/order_entity.dart';
import 'package:e_commerce_app/features/checkout/domain/repos/order_repo.dart';
import 'package:e_commerce_app/features/checkout/domain/shipping_address_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.orderRepo) : super(AddOrderInitial());

  /// Repos
  final OrderRepo orderRepo;

  /// Keys
  final GlobalKey<FormState> addressSectionFormKey = GlobalKey();

  /// Controllers
  final PageController pageController = PageController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController floorController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  /// Variables
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isSelectedPaymentMethod = false;
  late CartEntity cartEntity;

  /// Functions
  Future<void> addOrder() async {
    emit(
      AddOrderLoading(),
    );
   final order = OrderEntity(
      uId: getUser().uId,
      products: cartEntity.cartProducts,
      shippingAddressEntity: ShippingAddressEntity(
        name: nameController.text,
        email: emailController.text,
        address: addressController.text,
        city: cityController.text,
        floorNumber: floorController.text,
        phoneNumber: phoneController.text,
      ),
      priceOffAllProducts: cartEntity.priceOfAllProducts,
    );
    final resulte = await orderRepo.addOrder(orderEntity: order);
    resulte.fold(
      (failure) => emit(
        AddOrderFailure(errMessage: failure.errMessage),
      ),
      (r) => emit(
        AddOrderSuccess(),
      ),
    );
  }
}
