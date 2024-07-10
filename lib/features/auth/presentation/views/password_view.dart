import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/password_view_body.dart';
import 'package:flutter/material.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SymetricPadding(
          horizontal: 16,
          child: PasswordViewBody(),
        ),
      ),
    );
  }
}
