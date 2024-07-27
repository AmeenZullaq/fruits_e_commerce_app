import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class LookingFor extends StatelessWidget {
  const LookingFor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 29,
      vertical: 7,
      child: Row(
        children: [
          SvgPicture.asset(
            width: 20.w,
            height: 20.h,
            Assets.imagesSearchNormal,
          ),
          SizedBox(
            width: 16.h,
          ),
          Text(
            LocaleKeys.Look_for.tr(),
            style: AppTextStyles.regular13.copyWith(
              color: AppColors.gray400,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            width: 20.w,
            height: 20.h,
            Assets.imagesSetting,
          ),
        ],
      ),
    );
  }
}
