import 'package:e_commerce_app/features/products/presentation/views/widgets/our_products_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurProductsListView extends StatelessWidget {
  const OurProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      separatorBuilder: (context, index) {
        return SizedBox(width: 9.w);
      },
      itemBuilder: (context, index) {
        return const OurProductsListViewItem();
      },
    );
  }
}
