import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/forget_password.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/social_login_fields.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/login_fields.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.login.tr(),
          style: AppTextStyles.bold19.copyWith(
            color: AppColors.gray950,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const LoginFields(),
        SizedBox(
          height: 16.h,
        ),
        const ForgetPassword(),
        SizedBox(
          height: 33.h,
        ),
        AppButton(
          text: LocaleKeys.login.tr(),
          onTap: () {},
        ),
        SizedBox(
          height: 33.h,
        ),
        const DontHaveAccount(),
        SizedBox(
          height: 33.h,
        ),
        const OrDivider(),
        SizedBox(
          height: 16.h,
        ),
        const SocialLoginFields(),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
