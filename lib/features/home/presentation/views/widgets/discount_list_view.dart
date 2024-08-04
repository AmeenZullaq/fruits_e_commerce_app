import 'package:e_commerce_app/features/home/presentation/views/widgets/discount_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountListView extends StatelessWidget {
  const DiscountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      separatorBuilder: (context, index) => SizedBox(
        width: 8.w,
      ),
      itemBuilder: (context, index) {
        return const DiscountListViewItem();
      },
    );
  }
}
