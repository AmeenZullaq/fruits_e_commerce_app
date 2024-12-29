import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singup_cubit/sing_up_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/singup_view_body_bloc_consumer.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingupView extends StatelessWidget {
  const SingupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InjectionContainer.getIt.get<SingUpCubit>(),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: LocaleKeys.singup.tr(),
        ),
        body: const SingUpViewBodyBlocConsumer(),
      ),
    );
  }
}
