import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
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
        const CartListView(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .1,
        ),
        SymetricPadding(
          horizontal: 16,
          child: CustomButton(
            text: 'الدفع  120جنيه',
            onTap: () {},
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
