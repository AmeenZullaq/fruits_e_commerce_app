import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            AppRoutes.resetPasswordView,
          );
        },
        child: Text(
          LocaleKeys.forget_password.tr(),
          style: AppTextStyles.semiBold13.copyWith(
            color: AppColors.green1_600,
          ),
        ),
      ),
    );
  }
}
