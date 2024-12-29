import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: LocaleKeys.you_already_have_an_account.tr(),
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.gray400,
            ),
          ),
          WidgetSpan(alignment: PlaceholderAlignment.middle,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                  AppRoutes.singInView,
                );
              },
              child: Text(
                LocaleKeys.login.tr(),
                style: AppTextStyles.semiBold16.copyWith(
                  color: AppColors.green1_500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
