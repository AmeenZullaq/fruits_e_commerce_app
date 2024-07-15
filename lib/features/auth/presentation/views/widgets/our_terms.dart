import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurTerms extends StatelessWidget {
  const OurTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
