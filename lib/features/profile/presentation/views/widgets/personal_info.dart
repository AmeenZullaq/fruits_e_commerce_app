import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/core/services/app_validators.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/update_user_info_cubit/update_user_info_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key, required this.updateUserInfoCubit});

  final UpdateUserInfoCubit updateUserInfoCubit;

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.updateUserInfoCubit.personalInfoFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.Personal_information.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.gray950,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: [
              CustomTextFormField(
                controller: widget.updateUserInfoCubit.nameController,
                focusNode: widget.updateUserInfoCubit.nameFocusNode,
                enabled: widget.updateUserInfoCubit.isNameFieldEnabled,
                style: AppTextStyles.bold16,
                validator: (value) {
                  return AppValidators.validateUserName(value);
                },
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.updateUserInfoCubit.isNameFieldEnabled =
                        !widget.updateUserInfoCubit.isNameFieldEnabled;
                  });
                  if (widget.updateUserInfoCubit.isNameFieldEnabled) {
                    widget.updateUserInfoCubit.nameFocusNode.requestFocus();
                    SystemChannels.textInput.invokeMethod('TextInput.show');
                  } else {
                    widget.updateUserInfoCubit.nameFocusNode.unfocus();
                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                  }
                },
                child: EndPadding(
                  end: 20,
                  child: widget.updateUserInfoCubit.isNameFieldEnabled
                      ? const Icon(
                          CupertinoIcons.check_mark,
                        )
                      : SvgPicture.asset(
                          height: 24.h,
                          width: 24.w,
                          Assets.imagesEdit,
                        ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: [
              CustomTextFormField(
                controller: widget.updateUserInfoCubit.emailController,
                focusNode: widget.updateUserInfoCubit.emailFocusNode,
                enabled: widget.updateUserInfoCubit.isEmailFieldEnabled,
                style: AppTextStyles.bold16,
                validator: (value) {
                  return AppValidators.validateEmail(value);
                },
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.updateUserInfoCubit.isEmailFieldEnabled =
                        !widget.updateUserInfoCubit.isEmailFieldEnabled;
                  });
                  if (widget.updateUserInfoCubit.isEmailFieldEnabled) {
                    widget.updateUserInfoCubit.emailFocusNode.requestFocus();
                    SystemChannels.textInput.invokeMethod('TextInput.show');
                  } else {
                    widget.updateUserInfoCubit.emailFocusNode.unfocus();
                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                  }
                },
                child: EndPadding(
                  end: 20,
                  child: widget.updateUserInfoCubit.isEmailFieldEnabled
                      ? const Icon(
                          CupertinoIcons.check_mark,
                        )
                      : SvgPicture.asset(
                          height: 24.h,
                          width: 24.w,
                          Assets.imagesEdit,
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
