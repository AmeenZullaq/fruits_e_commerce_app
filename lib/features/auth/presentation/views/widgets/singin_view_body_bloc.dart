import 'package:e_commerce_app/core/helper_functions/showing_snack_bar.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/widgets/custom_Progross_hud.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singin_cubit/sing_in_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/singin_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SinginViewBodyBloc extends StatelessWidget {
  const SinginViewBodyBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingInCubit, SingInState>(
      listener: (context, state) {
        if (state is SingInSuccess) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.appMainViews,
            (route) => false,
          );
        }
        if (state is SingInFailure) {
          showingSnackBar(
            context,
            text: state.errMessage,
          );
        }
      },
      builder: (context, state) {
        return CustomProgrossHUD(
          isLoading: state is SingInLoading ? true : false,
          child: const SinginViewBody(),
        );
      },
    );
  }
}
