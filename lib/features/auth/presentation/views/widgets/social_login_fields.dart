import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singin_cubit/sing_in_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialSingInFields extends StatelessWidget {
  const SocialSingInFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
          onTap: () {
            context.read<SingInCubit>().singInWithGoogle();
          },
          iconName: Assets.imagesGoogleIcon,
          text: LocaleKeys.login_with_google,
        ),
        SizedBox(
          height: 16.h,
        ),
        SocialLoginButton(
          onTap: () {
            context.read<SingInCubit>().singInWithApple();
          },
          iconName: Assets.imagesAppleIcon,
          text: LocaleKeys.login_with_apple,
        ),
        SizedBox(
          height: 16.h,
        ),
        SocialLoginButton(
          onTap: () {
            context.read<SingInCubit>().singInWithFacebook();
          },
          iconName: Assets.imagesFacebookIcon,
          text: LocaleKeys.login_with_facebook,
        ),
      ],
    );
  }
}
