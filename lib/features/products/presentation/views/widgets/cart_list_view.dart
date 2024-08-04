import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/cart_list_view_item.dart';
import 'package:flutter/material.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      separatorBuilder: (context, index) {
        return const DynamicPadding(
          top: 3,
          bottom: 4,
          child: Divider(
            color: Color(0xFFF1F1F5),
          ),
        );
      },
      itemBuilder: (context, index) {
        return const CartListViewItem();
      },
    );
  }
}
