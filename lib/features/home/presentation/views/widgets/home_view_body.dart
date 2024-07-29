import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/best_seller_grid_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/best_seller_text.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/horizontal_list_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/looking_for_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          const HomeAppBar(),
          SizedBox(
            height: 16.h,
          ),
          const SymetricPadding(
            horizontal: 16,
            child: LookingForField(
              readOnly: true,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            height: 158.h,
            child: const HorizontalListView(),
          ),
          SizedBox(
            height: 16.h,
          ),
          const BestSellerText(),
          SizedBox(
            height: 8.h,
          ),
          const SymetricPadding(
            horizontal: 16,
            child: BestSellerGridView(),
          ),
          SizedBox(
            height: 12.h,
          ),
        ],
      ),
    );
  }
}
