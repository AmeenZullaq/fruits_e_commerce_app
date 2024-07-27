import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/bell_notofications.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: Row(
        children: [
          SvgPicture.asset(
            width: 44.w,
            height: 44.h,
            Assets.imagesBoy,
          ),
          SizedBox(
            width: 11.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.Good_morning.tr(),
                style: AppTextStyles.regular16.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'أحمد مصطفي',
                style: AppTextStyles.bold16.copyWith(
                  color: AppColors.gray950,
                ),
              ),
            ],
          ),
          const Spacer(),
          const BellNotifications(),
        ],
      ),
    );
  }
}
