import 'package:e_commerce_app/core/widgets/best_seller_text.dart';
import 'package:e_commerce_app/core/widgets/search_field.dart';
import 'package:e_commerce_app/features/home/presentation/cubits/get_best_selling_products_cubit/get_best_selling_products_cubit.dart';
import 'package:e_commerce_app/features/home/presentation/views/best_selling_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/best_selling_grid_view_bloc_builder.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/home_app_bar_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final getBestSellingProductsCubit =
        context.read<GetBestSellingProductsCubit>();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          const HomeAppBarBlocBuilder(),
          SizedBox(
            height: 24.h,
          ),
          const SearchField(),
          SizedBox(
            height: 24.h,
          ),
          SizedBox(
            height: 158.h,
            child: const FeaturedListView(),
          ),
          SizedBox(
            height: 16.h,
          ),
          BestSellerText(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BestSellingView(
                    getBestSellingProductsCubit: getBestSellingProductsCubit,
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 8.h,
          ),
          const BestSellingGridViewBlocBuilder(),
          SizedBox(
            height: 12.h,
          ),
        ],
      ),
    );
  }
}
