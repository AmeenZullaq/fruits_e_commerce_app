import 'package:e_commerce_app/core/helper_functions/show_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_Progross_hud.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/re_set_password_cubit/re_set_password_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/re_set_password_view_body.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReSetPasswordViewBodyBloc extends StatelessWidget {
  const ReSetPasswordViewBodyBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReSetPasswordCubit, ReSetPasswordState>(
      listener: (context, state) {
        if (state is ReSetPasswordFailure) {
          showSnackBar(
            context,
            text: state.errMessage,
          );
        }
        if (state is ReSetPasswordSuccess) {
          showSnackBar(
            context,
            text: LocaleKeys
                .we_have_already_sent_a_message_to_your_email_address
                .tr(),
          );
        }
      },
      builder: (context, state) {
        return CustomProgrossHUD(
          isLoading: state is ReSetPasswordLoading ? true : false,
          child: const ReSetPasswordViewBody(),
        );
      },
    );
  }
}
