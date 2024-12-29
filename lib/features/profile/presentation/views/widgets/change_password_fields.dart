import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/services/app_validators.dart';
import 'package:e_commerce_app/core/widgets/password_field.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/update_user_info_cubit/update_user_info_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordFields extends StatelessWidget {
  const ChangePasswordFields({
    super.key,
    required this.updateUserInfoCubit,
  });

  final UpdateUserInfoCubit updateUserInfoCubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: updateUserInfoCubit.changePasswordFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.change_password.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray950,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          PasswordField(
            passwordController: updateUserInfoCubit.currentPasswordController,
            hintText: LocaleKeys.Current_password.tr(),
          ),
          SizedBox(
            height: 8.h,
          ),
          PasswordField(
            passwordController: updateUserInfoCubit.newPasswordController,
            hintText: LocaleKeys.New_Password.tr(),
          ),
          SizedBox(
            height: 8.h,
          ),
          PasswordField(
            passwordController:
                updateUserInfoCubit.confirmNewPasswordController,
            hintText: LocaleKeys.Confirm_the_new_password.tr(),
            validator: (value) {
              return AppValidators.validateConfirmPassword(
                value,
                updateUserInfoCubit.newPasswordController.text,
              );
            },
          ),
        ],
      ),
    );
  }
}
