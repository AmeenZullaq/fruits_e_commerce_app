import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: LocaleKeys.do_not_have_an_account.tr(),
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.gray400,
            ),
          ),
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                  AppRoutes.singupView,
                );
              },
              child: Text(
                LocaleKeys.create_a_new_account.tr(),
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
