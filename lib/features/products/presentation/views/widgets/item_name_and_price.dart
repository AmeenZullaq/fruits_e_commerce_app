import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_icon.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemNameAndPrice extends StatelessWidget {
  const ItemNameAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'فراولة',
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.gray950,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Text(
                  '20${LocaleKeys.pound.tr()} ',
                  style: AppTextStyles.bold16.copyWith(
                    color: AppColors.orange500,
                  ),
                ),
                Text(
                  "/ ${LocaleKeys.kilo.tr()}",
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.orange300,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            CustomIcon(
              onTap: () {},
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(
              '4',
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.gray950,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            CustomIcon(
              onTap: () {},
              backgroundColor: const Color(0xffF3F5F7),
              icon: CupertinoIcons.minus,
              iconColor: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
