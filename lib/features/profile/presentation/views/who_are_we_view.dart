import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/who_are_we_view_body.dart';
import 'package:flutter/material.dart';

class WhoAreWeView extends StatelessWidget {
  const WhoAreWeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SymetricPadding(
          horizontal: 16,
          child: WhoAreWeViewBody(),
        ),
      ),
    );
  }
}
