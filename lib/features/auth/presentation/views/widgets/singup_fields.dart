import 'package:e_commerce_app/core/widgets/App_text_form_field.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/login_fields.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SingupFields extends StatelessWidget {
  const SingupFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: LocaleKeys.full_name.tr(),
          keyboardType: TextInputType.name,
        ),
        const LoginFields(),
      ],
    );
  }
}
