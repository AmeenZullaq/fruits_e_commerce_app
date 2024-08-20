import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/logout.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/profile_custom_row.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/switch_widget.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/user_image.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/user_name.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAppBar(
            context,
            title: LocaleKeys.My_account.tr(),
          ),
          Row(
            children: [
              const UserImage(),
              SizedBox(
                width: 24.w,
              ),
              const UserName(),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            LocaleKeys.general.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray950,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          ProfileCustomRow(
            text: LocaleKeys.Profile.tr(),
            iconName: Assets.imagesUser,
          ),
          ProfileCustomRow(
            text: LocaleKeys.Favorites.tr(),
            iconName: Assets.imagesFavorites,
          ),
          ProfileCustomRow(
            text: LocaleKeys.notifications.tr(),
            iconName: Assets.imagesNotificationProfile,
            suffixWidget: const SwitchWidget(),
          ),
          ProfileCustomRow(
            text: LocaleKeys.the_language.tr(),
            iconName: Assets.imagesLanguage,
          ),
          ProfileCustomRow(
            text: LocaleKeys.Mode.tr(),
            iconName: Assets.imagesMode,
            suffixWidget: const SwitchWidget(),
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            LocaleKeys.Help.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray950,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          ProfileCustomRow(
            text: LocaleKeys.Who_are_we.tr(),
            iconName: Assets.imagesInfoCircle,
          ),
          SizedBox(
            height: 30.h,
          ),
          const LogOut(),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
