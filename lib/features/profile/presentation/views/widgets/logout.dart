import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class LogOut extends StatelessWidget {
  const LogOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 41.h,
      decoration: const BoxDecoration(
        color: AppColors.green1_50,
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            LocaleKeys.Log_out.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.green1_500,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              width: 18.w,
              height: 18.h,
              Assets.imagesLogout,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
