import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pinput_field.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppBar(
          context,
          title: LocaleKeys.code_verification.tr(),
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(
          LocaleKeys.Enter_the_code_we_sent_to_the_following_email_address.tr(),
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.gray600,
          ),
        ),
        Text(
          'Max@gmail.com',
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.gray600,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        const Center(
          child: PinPutField(),
        ),
        SizedBox(
          height: 30.h,
        ),
        AppButton(
          text: LocaleKeys.check_the_code.tr(),
          onTap: () {},
        ),
        SizedBox(
          height: 30.h,
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            LocaleKeys.resend_the_code.tr(),
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.green1_600,
            ),
          ),
        ),
      ],
    );
  }
}
