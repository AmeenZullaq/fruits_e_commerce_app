import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/logout.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/account_config.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/account_custom_row.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/user_image.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/user_name.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppBar(
          context,
          title: LocaleKeys.My_account.tr(),
        ),
        SizedBox(
          height: 8.h,
        ),
        SymetricPadding(
          horizontal: 16,
          child: Row(
            children: [
              const UserImage(),
              SizedBox(
                width: 24.w,
              ),
              const UserName(),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        SymetricPadding(
          horizontal: 16,
          child: Text(
            LocaleKeys.month.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray950,
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        const AccountConfig(),
        SizedBox(
          height: 18.h,
        ),
        SymetricPadding(
          horizontal: 16,
          child: Text(
            LocaleKeys.Help.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray950,
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        SymetricPadding(
          horizontal: 16,
          child: AccountCustomRow(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.whoAreWeView);
            },
            text: LocaleKeys.Who_are_we.tr(),
            iconName: Assets.imagesInfoCircle,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        const LogOut(),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
