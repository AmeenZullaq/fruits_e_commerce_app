import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/re_set_password_cubit/re_set_password_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/re_set_password_view_body_bloc.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReSetPasswordView extends StatelessWidget {
  const ReSetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InjectionContainer.getIt.get<ReSetPasswordCubit>(),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: LocaleKeys.Forgetting_Password.tr(),
          isArrowBackShow: true,
        ),
        body: const ReSetPasswordViewBodyBloc(),
      ),
    );
  }
}
