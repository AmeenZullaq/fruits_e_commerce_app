import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/services/get_it_service.dart';
import 'package:e_commerce_app/features/auth/data/repos_impl/auth_repo_impl.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/password_cubit/password_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/password_view_body_bloc.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordCubit(
        getIt.get<AuthRepoImpl>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: LocaleKeys.Forgetting_Password.tr(),
          leading: Icons.arrow_back_ios_new,
        ),
        body: const PasswordViewBodyBloc(),
      ),
    );
  }
}
