import 'package:e_commerce_app/core/helper_functions/show_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singup_cubit/sing_up_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/already_have_account.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/our_terms.dart';
import 'package:e_commerce_app/core/widgets/password_field.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/user_name_field.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingupViewBody extends StatelessWidget {
  const SingupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SingUpCubit singUpCubit = context.read<SingUpCubit>();
    return SingleChildScrollView(
      child: DynamicPadding(
        bottom: 45,
        end: 16,
        start: 16,
        child: Form(
          key: singUpCubit.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24.h,
              ),
              UserNameField(
                userNameController: singUpCubit.userNameController,
              ),
              SizedBox(
                height: 16.h,
              ),
              EmailField(
                emailController: singUpCubit.emailController,
              ),
              SizedBox(
                height: 16.h,
              ),
              PasswordField(
                passwordController: singUpCubit.passwordController,
                hintText: LocaleKeys.password.tr(),
              ),
              SizedBox(
                height: 16.h,
              ),
              const OurTerms(),
              SizedBox(
                height: 30.h,
              ),
              AppButton(
                onTap: () {
                  if (singUpCubit.formKey.currentState!.validate()) {
                    if (singUpCubit.isTermsAccepted) {
                      singUpCubit.singUp();
                    } else {
                      showSnackBar(
                        context,
                        text: LocaleKeys
                            .you_must_agree_to_the_terms_and_conditions
                            .tr(),
                      );
                    }
                  }
                },
                text: LocaleKeys.create_a_new_account.tr(),
              ),
              SizedBox(
                height: 26.h,
              ),
              const AlreadyHaveAccount(),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
