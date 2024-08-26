import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/language_view_body.dart';
import 'package:flutter/material.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SymetricPadding(
        horizontal: 16,
        child: LanguageViewBody(),
      ),
    );
  }
}
