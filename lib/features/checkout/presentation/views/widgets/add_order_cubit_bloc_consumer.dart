import 'package:e_commerce_app/core/helper_functions/showing_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_Progross_hud.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddOrderCubitBlocConsumer extends StatelessWidget {
  const AddOrderCubitBlocConsumer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        if (state is AddOrderFailure) {
          showingSnackBar(
            context,
            text: state.errMessage,
          );
        }
        if (state is AddOrderSuccess) {
          showingSnackBar(
            context,
            text: 'تمت العملية بنجاح',
          );
        }
      },
      builder: (context, state) {
        return CustomProgrossHUD(
          isLoading: state is AddOrderLoading ? true : false,
          child: child,
        );
      },
    );
  }
}
