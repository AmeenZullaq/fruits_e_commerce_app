import 'package:e_commerce_app/core/services/app_validators.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.passwordController,
  });
  final TextEditingController passwordController;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        return AppValidators.validatePassword(value);
      },
      obscureText: obscureText,
      controller: widget.passwordController,
      keyboardType: TextInputType.visiblePassword,
      hintText: LocaleKeys.password.tr(),
      suffixIcon: EndPadding(
        end: 32,
        child: GestureDetector(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
            color: const Color(0xffC9CECF),
          ),
        ),
      ),
    );
  }
}
