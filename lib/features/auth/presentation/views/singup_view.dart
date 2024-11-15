import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/services/get_it_service.dart';
import 'package:e_commerce_app/features/auth/data/repos_impl/auth_repo_impl.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singup_cubit/sing_up_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/singup_view_body_bloc.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingupView extends StatelessWidget {
  const SingupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingUpCubit(
        getIt.get<AuthRepoImpl>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: LocaleKeys.singup.tr(),
        ),
        body: const SingUpViewBodyBloc(),
      ),
    );
  }
}
