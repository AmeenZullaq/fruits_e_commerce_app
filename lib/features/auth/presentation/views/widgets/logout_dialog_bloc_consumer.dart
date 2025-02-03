import 'package:e_commerce_app/core/helper_functions/show_snack_bar.dart';
import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/core/widgets/custom_Progross_hud.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/logout_cubit/logout_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogOutDialogBlocConsumer extends StatelessWidget {
  const LogOutDialogBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.singInView,
            (route) => false,
          );
        }
        if (state is LogoutFailure) {
          showSnackBar(
            context,
            text: state.errMessage,
          );
        }
      },
      builder: (context, state) {
        return CustomProgrossHUD(
          isLoading: (state is LogoutLoading) ? true : false,
          child: const LogoutDialog(),
        );
      },
    );
  }
}
