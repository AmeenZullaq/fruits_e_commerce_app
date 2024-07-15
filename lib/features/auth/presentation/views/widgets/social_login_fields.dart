import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLoginFields extends StatelessWidget {
  const SocialLoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
          onTap: () {},
          iconName: Assets.imagesGoogleIcon,
          text: LocaleKeys.login_with_google,
        ),
        SizedBox(
          height: 16.h,
        ),
        SocialLoginButton(
          onTap: () {},
          iconName: Assets.imagesAppleIcon,
          text: LocaleKeys.login_with_apple,
        ),
        SizedBox(
          height: 16.h,
        ),
        SocialLoginButton(
          onTap: () {},
          iconName: Assets.imagesFacebookIcon,
          text: LocaleKeys.login_with_facebook,
        ),
      ],
    );
  }
}
