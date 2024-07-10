import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/App_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordViewBody extends StatelessWidget {
  const PasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppBar(
          context,
          title: LocaleKeys.Forgetting_Password.tr(),
          leading: Icons.arrow_back_ios_new,
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(
          LocaleKeys.Dont_worry_just_write_your_phone_number_and_we_will_send
              .tr(),
          style: AppTextStyles.bold16.copyWith(
            color: AppColors.gray600,
          ),
        ),
        Text(
          LocaleKeys.verification_code.tr(),
          style: AppTextStyles.bold16.copyWith(
            color: AppColors.gray600,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        AppTextFormField(
          hintText: LocaleKeys.mobile_number.tr(),
          keyboardType: TextInputType.phone,
        ),
        SizedBox(
          height: 30.h,
        ),
        AppButton(
          text: LocaleKeys.forget_password.tr(),
          onTap: () {},
        ),
      ],
    );
  }
}
