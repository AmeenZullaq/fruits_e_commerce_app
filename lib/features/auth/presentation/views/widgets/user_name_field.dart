import 'package:e_commerce_app/core/services/app_validators.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({
    super.key,
    required this.userNameController,
  });

  final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        return AppValidators.validateUserName(value);
      },
      controller: userNameController,
      hintText: LocaleKeys.full_name.tr(),
      keyboardType: TextInputType.name,
    );
  }
}
