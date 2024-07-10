import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/already_have_account.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/our_terms.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/singup_fields.dart';
import 'package:e_commerce_app/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingupViewBody extends StatelessWidget {
  const SingupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildAppBar(
          context,
          title: LocaleKeys.singup.tr(),
        ),
        SizedBox(
          height: 24.h,
        ),
        const SingupFields(),
        SizedBox(
          height: 16.h,
        ),
        const OurTerms(),
        SizedBox(
          height: 30.h,
        ),
        AppButton(
          onTap: () {},
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
    );
  }
}
