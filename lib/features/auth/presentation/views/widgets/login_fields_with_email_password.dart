import 'package:e_commerce_app/core/widgets/App_text_form_field.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/suffix_eye.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: LocaleKeys.email_address.tr(),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 16.h,
        ),
        AppTextFormField(
          keyboardType: TextInputType.visiblePassword,
          hintText: LocaleKeys.password.tr(),
          suffixIcon: const SuffixEye(),
        ),
      ],
    );
  }
}
