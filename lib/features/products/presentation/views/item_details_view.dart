import 'package:e_commerce_app/features/products/presentation/views/widgets/item_details_view_body.dart';
import 'package:flutter/material.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: ItemDetailsViewBody(),
      ),
    );
  }
}
