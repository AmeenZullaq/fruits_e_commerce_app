import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: LocaleKeys.login.tr(),
      ),
      body: const SingleChildScrollView(
        child: DynamicPadding(
          bottom: 45,
          end: 16,
          start: 16,
          child: LoginViewBody(),
        ),
      ),
    );
  }
}
