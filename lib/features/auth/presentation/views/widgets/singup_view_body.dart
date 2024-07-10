import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/singup_fields.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingupViewBody extends StatelessWidget {
  const SingupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.singup.tr(),
          style: AppTextStyles.bold19.copyWith(
            color: AppColors.gray950,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const SingupFields(),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            const CustomCheckBox(),
            SizedBox(
              width: 16.w,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: LocaleKeys.By_creating_an_account_you_agree_to.tr(),
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.gray400,
                    ),
                  ),
                  TextSpan(
                    text: LocaleKeys.our_conditions.tr(),
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.green1_600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        StartPadding(
          start: 42,
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              LocaleKeys.and_terms.tr(),
              style: AppTextStyles.semiBold13.copyWith(
                color: AppColors.green1_600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        AppButton(
          onTap: () {},
          text: LocaleKeys.create_a_new_account.tr(),
        ),
        SizedBox(
          height: 26.h,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: LocaleKeys.you_already_have_an_account.tr(),
                style: AppTextStyles.semiBold16.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              WidgetSpan(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(
                      AppRoutes.loginView,
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
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
