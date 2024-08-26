import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/core/widgets/password_field.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
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
          Text(
            LocaleKeys.Personal_information.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray950,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomTextFormField(
            hintText: 'أحمد ياسر',
            controller: TextEditingController(),
            suffixIcon: DynamicPadding(
              end: 20,
              child: SvgPicture.asset(
                width: 20.w,
                height: 20.h,
                Assets.imagesEdit,
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomTextFormField(
            hintText: 'mail@mail.com',
            controller: TextEditingController(),
            suffixIcon: DynamicPadding(
              end: 20,
              child: SvgPicture.asset(
                width: 20.w,
                height: 20.h,
                Assets.imagesEdit,
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
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
            passwordController: TextEditingController(),
            hintText: LocaleKeys.Current_password.tr(),
          ),
          SizedBox(
            height: 8.h,
          ),
          PasswordField(
            passwordController: TextEditingController(),
            hintText: LocaleKeys.New_Password.tr(),
          ),
          SizedBox(
            height: 8.h,
          ),
          PasswordField(
            passwordController: TextEditingController(),
            hintText: LocaleKeys.Confirm_the_new_password.tr(),
          ),
          SizedBox(
            height: 50.h,
          ),
          AppButton(
            text: LocaleKeys.Save_changes.tr(),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
