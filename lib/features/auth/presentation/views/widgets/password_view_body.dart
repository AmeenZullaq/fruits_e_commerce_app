import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/password_cubit/password_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordViewBody extends StatelessWidget {
  const PasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    return Form(
      key: passwordCubit.formKey,
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
            SizedBox(
              height: 30.h,
            ),
            EmailField(
              emailController: passwordCubit.emailController,
            ),
            SizedBox(
              height: 30.h,
            ),
            AppButton(
              text: LocaleKeys.forget_password.tr(),
              onTap: () async {
                if (passwordCubit.formKey.currentState!.validate()) {
                  await passwordCubit.createNewPassword();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
