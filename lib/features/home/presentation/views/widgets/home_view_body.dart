import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/core/widgets/custom_grid_view.dart';
import 'package:e_commerce_app/core/widgets/best_seller_text.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

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
          SymetricPadding(
            horizontal: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.searchView,
                );
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.imagesSearchNormal,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
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
              Navigator.pushNamed(
                context,
                AppRoutes.bestSellerView,
              );
            },
          ),
          SizedBox(
            height: 8.h,
          ),
          const SymetricPadding(
            horizontal: 16,
            child: CustomGridView(),
          ),
          SizedBox(
            height: 12.h,
          ),
        ],
      ),
    );
  }
}
