import 'package:e_commerce_app/core/constants/app_keys.dart';
import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/services/shared_preferences.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/update_user_info_cubit/update_user_info_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/change_password_fields.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/personal_info_bloc_Listener.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UpdateUserInfoCubit updateUserInfoCubit =
        context.read<UpdateUserInfoCubit>();
    return SingleChildScrollView(
      child: SymetricPadding(
        horizontal: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAppBar(
              context,
              title: LocaleKeys.Profile.tr(),
              isArrowBackShow: true,
            ),
            SizedBox(
              height: 8.h,
            ),
            PersonalInfoBlocConsumer(
              updateUserInfoCubit: updateUserInfoCubit,
            ),
            SizedBox(
              height: 16.h,
            ),
            ChangePasswordFields(
              updateUserInfoCubit: updateUserInfoCubit,
            ),
            SizedBox(
              height: 50.h,
            ),
            AppButton(
              text: LocaleKeys.Save_changes.tr(),
              onTap: () {
                if (updateUserInfoCubit.personalInfoFormKey.currentState!
                        .validate() &&
                    (updateUserInfoCubit.nameController.text !=
                            SharedPrefs.getString(AppKeys.userName) ||
                        updateUserInfoCubit.emailController.text !=
                            SharedPrefs.getString(AppKeys.userEmail))) {
                  updateUserInfoCubit.updateUserInfo();
                }
                if (updateUserInfoCubit.currentPasswordController.text != '' ||
                    updateUserInfoCubit.newPasswordController.text != '' ||
                    updateUserInfoCubit.confirmNewPasswordController.text !=
                        '') {
                  if (updateUserInfoCubit.changePasswordFormKey.currentState!
                      .validate()) {
                    updateUserInfoCubit.changePassword();
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
