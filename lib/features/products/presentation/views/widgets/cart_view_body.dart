import 'package:e_commerce_app/features/products/presentation/views/widgets/cart_list_view.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/cart_view_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        const CartViewTitle(),
        SizedBox(
          height: 16.h,
        ),
        const CartListView()
      ],
    );
  }
}
