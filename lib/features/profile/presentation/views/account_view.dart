import 'package:e_commerce_app/features/auth/presentation/cubits/logout_cubit/logout_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/account_view_body.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => InjectionContainer.getIt.get<LogoutCubit>(),
        child: const AccountViewBody(),
      ),
    );
  }
}
