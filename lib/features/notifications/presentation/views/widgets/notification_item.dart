import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 78.h,
          alignment: Alignment.center,
          color: const Color(0xffEBF9F1).withOpacity(.5),
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28.r,
                child: SvgPicture.asset(
                  Assets.imagesLogo,
                ),
              ),
              SizedBox(
                width: 13.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.Discount_on_fruit_prices_on_the_occasion.tr(),
                    style: AppTextStyles.semiBold13.copyWith(
                      color: const Color(0xff323232),
                    ),
                  ),
                  Text(
                    LocaleKeys.al_eid.tr(),
                    style: AppTextStyles.semiBold13.copyWith(
                      color: const Color(0xff323232),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                LocaleKeys.morning.tr(),
                style: AppTextStyles.regular13.copyWith(
                  color: AppColors.gray400,
                ),
              ),
            ],
          ),
        ),
        PositionedDirectional(
          start: 20.w,
          top: -3.r,
          child: CircleAvatar(
            radius: 4.r,
            backgroundColor: AppColors.green1_500,
          ),
        ),
      ],
    );
  }
}
