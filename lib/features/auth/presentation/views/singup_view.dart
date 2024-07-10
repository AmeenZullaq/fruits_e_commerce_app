import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/singup_view_body.dart';
import 'package:flutter/material.dart';

class SingupView extends StatelessWidget {
  const SingupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: DynamicPadding(
            bottom: 45,
            end: 16,
            start: 16,
            top: 28,
            child: SingupViewBody(),
          ),
        ),
      ),
    );
  }
}
