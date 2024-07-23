import 'package:e_commerce_app/core/helper_functions/delay.dart';
import 'package:e_commerce_app/core/helper_functions/showing_snack_bar.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/widgets/custom_Progross_hud.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/password_cubit/password_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/password_view_body.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordViewBodyBloc extends StatelessWidget {
  const PasswordViewBodyBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordCubit, PasswordState>(
      listener: (context, state) {
        if (state is PasswordFailure) {
          showingSnackBar(
            context,
            text: state.errMessage,
          );
        }
        if (state is PasswordSuccess) {
          showingSnackBar(
            context,
            text: LocaleKeys
                .we_have_already_sent_a_message_to_your_email_address
                .tr(),
          );
          delay(
            context,
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.singIn),
          );
        }
      },
      builder: (context, state) {
        return CustomProgrossHUD(
          isLoading: state is PasswordLoading ? true : false,
          child: const PasswordViewBody(),
        );
      },
    );
  }
}
