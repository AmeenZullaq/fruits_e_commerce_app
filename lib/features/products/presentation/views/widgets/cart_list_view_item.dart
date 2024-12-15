import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/custom_add_icon.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CartListViewItem extends StatelessWidget {
  const CartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: SizedBox(
        height: 92.h,
        child: Row(
          children: [
            Container(
              height: 92.h,
              width: 73.w,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F7),
              ),
              child: Image.asset(
                height: 40.h,
                width: 53.w,
                fit: BoxFit.fill,
                Assets.imagesStrawPerryPng,
              ),
            ),
            SizedBox(
              width: 17.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.straw_perry.tr(),
                  style: AppTextStyles.bold13.copyWith(
                    color: const Color(0xFF06161C),
                  ),
                ),
                Text(
                  '3 كم',
                  style: AppTextStyles.regular13.copyWith(
                    color: AppColors.orange500,
                  ),
                ),
                Row(
                  children: [
                    CustomAddIcon(
                      raduis: 12.r,
                      iconSize: 10.sp,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      '3',
                      style: AppTextStyles.bold16.copyWith(
                        color: AppColors.gray950,
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    CustomAddIcon(
                      raduis: 12.r,
                      backgroundColor: const Color(0xFFF3F5F7),
                      icon: CupertinoIcons.minus,
                      iconSize: 10.sp,
                      iconColor: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    width: 20.w,
                    height: 20.h,
                    fit: BoxFit.fill,
                    Assets.imagesTrash,
                  ),
                ),
                Text(
                  LocaleKeys.pound,
                  style: AppTextStyles.bold16.copyWith(
                    color: AppColors.orange500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
