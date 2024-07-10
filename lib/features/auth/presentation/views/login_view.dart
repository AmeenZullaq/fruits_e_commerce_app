import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: DynamicPadding(
            bottom: 45,
            end: 16,
            start: 16,
            child: LoginViewBody(),
          ),
        ),
      ),
    );
  }
}
