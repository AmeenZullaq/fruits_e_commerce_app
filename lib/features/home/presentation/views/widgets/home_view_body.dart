import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/core/widgets/best_seller_text.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/best_selling_grid_view_bloc_builder.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
            height: 24.h,
          ),
          SymetricPadding(
            horizontal: 16,
            child: CustomTextFormField(
              fillColor: Colors.white,
              hintText: LocaleKeys.Look_for.tr(),
              controller: TextEditingController(),
              suffixIcon: EndPadding(
                  end: 16,
                  child: SvgPicture.asset(
                    Assets.imagesFiltter,
                  )),
              prefixIcon: SymetricPadding(
                horizontal: 16,
                child: SvgPicture.asset(
                  Assets.imagesSearchNormal,
                ),
              ),
            ),
          ),
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
              Navigator.pushNamed(
                context,
                AppRoutes.bestSellerView,
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
