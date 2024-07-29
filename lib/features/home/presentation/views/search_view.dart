import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/looking_for_field.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: LocaleKeys.search.tr(),
        isActionsShow: true,
        isLeadingShow: true,
      ),
      body: const SearchViewBody(),
    );
  }
}

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      vertical: 16,
      child: Column(
        children: [
          const LookingForField(),
          const Spacer(
            flex: 2,
          ),
          SvgPicture.asset(
            Assets.imagesSearch,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            LocaleKeys.search.tr(),
            style: AppTextStyles.bold16.copyWith(
              color: AppColors.gray600,
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Text(
            LocaleKeys.Sorry_this_information_is_not_available_for_the_moment
                .tr(),
            style: AppTextStyles.regular13.copyWith(
              color: AppColors.gray400,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
