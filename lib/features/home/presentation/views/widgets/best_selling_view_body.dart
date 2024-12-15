import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAppBar(
            context,
            isNotificationsShow: true,
            isArrowBackShow: true,
            title: LocaleKeys.best_seller.tr(),
          ),
          SizedBox(
            height: 16.h,
          ),
          SymetricPadding(
            horizontal: 16,
            child: Text(
              LocaleKeys.best_seller.tr(),
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.gray950,
              ),
            ),
          ),
          // const SymetricPadding(
          //   horizontal: 16,
          //   child: BestSellingGridView(),
          // ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
