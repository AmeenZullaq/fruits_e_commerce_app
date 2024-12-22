import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/widgets/search_field.dart';
import 'package:e_commerce_app/features/products/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/our_products_header.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/proiducts_grid_view_bloc_builder.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildAppBar(
            context,
            title: LocaleKeys.products.tr(),
            isNotificationsShow: true,
          ),
          SizedBox(
            height: 16.h,
          ),
          const SearchField(),
          SizedBox(
            height: 16.h,
          ),
          OurProductsHeader(
            getProductsCubit: context.read<GetProductsCubit>(),
          ),
          // SizedBox(
          //   height: 8.h,
          // ),
          // SizedBox(
          //   height: 89.h,
          //   child: const OurProductsListViewBlocBuilder(),
          // ),
          // SizedBox(
          //   height: 24.h,
          // ),
          // const BestSellerText(),
          const ProductsGridViewBlocBuilder(),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
