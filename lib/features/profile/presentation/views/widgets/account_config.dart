import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/account_custom_row.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/switch_widget.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AccountConfig extends StatelessWidget {
  const AccountConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: Column(
        children: [
          AccountCustomRow(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.profileView);
            },
            text: LocaleKeys.Profile.tr(),
            iconName: Assets.imagesUser,
          ),
          AccountCustomRow(
            text: LocaleKeys.Favorites.tr(),
            iconName: Assets.imagesFavorites,
          ),
          AccountCustomRow(
            text: LocaleKeys.notifications.tr(),
            iconName: Assets.imagesNotificationProfile,
            suffixWidget: const SwitchWidget(),
          ),
          AccountCustomRow(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.languageView);
            },
            text: LocaleKeys.the_language.tr(),
            iconName: Assets.imagesLanguage,
          ),
          AccountCustomRow(
            text: LocaleKeys.Mode.tr(),
            iconName: Assets.imagesMode,
            suffixWidget: const SwitchWidget(),
          ),
        ],
      ),
    );
  }
}
