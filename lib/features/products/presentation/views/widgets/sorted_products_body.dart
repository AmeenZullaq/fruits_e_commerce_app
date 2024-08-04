import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/widgets/custom_grid_view.dart';
import 'package:e_commerce_app/features/products/presentation/cubits/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/sorted_icon.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SortedProductsBody extends StatelessWidget {
  const SortedProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SearchField(),
        SizedBox(
          height: 16.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.results.tr(),
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.gray950,
              ),
            ),
            const SortedIcon(),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomGridView(
          onItemTapped: () {
            context.read<BottomNavCubit>().hide();
            Navigator.of(context).pushNamed(
              AppRoutes.itemDetailsView,
            );
          },
        ),
      ],
    );
  }
}
