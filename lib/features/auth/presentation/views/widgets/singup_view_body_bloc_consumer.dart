import 'package:e_commerce_app/core/helper_functions/showing_snack_bar.dart';
import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/core/widgets/custom_Progross_hud.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singup_cubit/sing_up_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/singup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpViewBodyBlocConsumer extends StatelessWidget {
  const SingUpViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingUpCubit, SingUpState>(
      listener: (context, state) {
        if (state is SingUpSuccess) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.appMainViews,
            (route) => false,
          );
        }
        if (state is SingUpFailure) {
          showingSnackBar(
            context,
            text: state.errMessage,
          );
        }
      },
      builder: (context, state) {
        return CustomProgrossHUD(
          isLoading: state is SingUpLoading ? true : false,
          child: const SingupViewBody(),
        );
      },
    );
  }
}
