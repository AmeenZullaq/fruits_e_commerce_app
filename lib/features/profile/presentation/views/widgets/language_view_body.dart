import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/arabic.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/english.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageViewBody extends StatefulWidget {
  const LanguageViewBody({super.key});

  @override
  State<LanguageViewBody> createState() => _LanguageViewBodyState();
}

class _LanguageViewBodyState extends State<LanguageViewBody> {
  ValueNotifier<bool> isChecked = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppBar(
          context,
          title: LocaleKeys.the_language.tr(),
          isArrowBackShow: true,
        ),
        Text(
          LocaleKeys.select_language.tr(),
          style: AppTextStyles.bold19.copyWith(
            color: AppColors.gray950,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Arabic(
          isChecked: isChecked,
        ),
        SizedBox(
          height: 16.h,
        ),
        English(
          isChecked: isChecked,
        ),
      ],
    );
  }
}
