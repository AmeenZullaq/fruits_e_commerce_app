import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singin_cubit/sing_in_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/forget_password.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/social_login_fields.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SinginViewBody extends StatelessWidget {
  const SinginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SingInCubit singInCubit = context.read<SingInCubit>();
    return SingleChildScrollView(
      child: DynamicPadding(
        bottom: 45,
        start: 16,
        end: 16,
        child: Form(
          key: singInCubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 24.h,
              ),
              EmailField(
                emailController: singInCubit.emailController,
              ),
              SizedBox(
                height: 16.h,
              ),
              PasswordField(
                passwordController: singInCubit.passwordController,
              ),
              SizedBox(
                height: 16.h,
              ),
              const ForgetPassword(),
              SizedBox(
                height: 33.h,
              ),
              AppButton(
                text: LocaleKeys.login.tr(),
                onTap: () {
                  if (singInCubit.formKey.currentState!.validate()) {
                    singInCubit.singInwithEmailAndPassword();
                  }
                },
              ),
              SizedBox(
                height: 33.h,
              ),
              const DontHaveAccount(),
              SizedBox(
                height: 33.h,
              ),
              const OrDivider(),
              SizedBox(
                height: 16.h,
              ),
              const SocialSingInFields(),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
