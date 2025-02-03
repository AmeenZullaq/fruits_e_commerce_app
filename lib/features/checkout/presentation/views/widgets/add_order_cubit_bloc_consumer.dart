import 'package:e_commerce_app/core/helper_functions/show_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_Progross_hud.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
          showSnackBar(
            context,
            text: state.errMessage,
          );
        }
        if (state is AddOrderSuccess) {
          showSnackBar(
            context,
            text: LocaleKeys.anErrorAccurredTryAgain.tr(),
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
