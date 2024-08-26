import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/re_set_password_cubit/re_set_password_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReSetPasswordViewBody extends StatelessWidget {
  const ReSetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    ReSetPasswordCubit resetPasswordCubit = context.read<ReSetPasswordCubit>();
    return Form(
      key: resetPasswordCubit.formKey,
      child: SymetricPadding(
        horizontal: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
            ),
            Text(
              LocaleKeys.Dont_worry_just_enter_your_email_address.tr(),
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.gray600,
              ),
            ),
            Text(
              LocaleKeys.and_we_will_send_you_a_link_to_reset_your_password
                  .tr(),
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.gray600,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            EmailField(
              emailController: resetPasswordCubit.emailController,
            ),
            SizedBox(
              height: 30.h,
            ),
            AppButton(
              text: LocaleKeys.forget_password.tr(),
              onTap: () async {
                if (resetPasswordCubit.formKey.currentState!.validate()) {
                  await resetPasswordCubit.createNewPassword();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
