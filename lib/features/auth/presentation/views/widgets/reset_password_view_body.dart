import 'package:e_commerce_app/core/helper_functions/showing_dialog.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/success_dialog.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24.h,
        ),
        Text(
          LocaleKeys.create_a_new_password_to_login.tr(),
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.gray950,
          ),
        ),
        SizedBox(
          height: 34.h,
        ),
        AppTextFormField(
          controller: TextEditingController(),
          hintText: LocaleKeys.password.tr(),
          // suffixIcon: const SuffixEye(),
        ),
        SizedBox(
          height: 24.h,
        ),
        AppTextFormField(
          controller: TextEditingController(),

          hintText: LocaleKeys.confirm_password.tr(),
          // suffixIcon: const SuffixEye(),
        ),
        SizedBox(
          height: 24.h,
        ),
        AppButton(
          text: LocaleKeys.create_a_new_password.tr(),
          onTap: () {
            showingDialog(
              context,
              dialog: const SuccessDialog(),
            );
          },
        )
      ],
    );
  }
}
