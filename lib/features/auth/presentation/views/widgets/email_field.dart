import 'package:e_commerce_app/core/services/app_validators.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.emailController,
  });
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        return AppValidators.validateEmail(value);
      },
      controller: emailController,
      hintText: LocaleKeys.email_address.tr(),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
