import 'package:e_commerce_app/features/home/presentation/views/widgets/best_seller_grid_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: .67,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return const BestSellerGridViewItem();
      },
    );
  }
}
