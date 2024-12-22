import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/custom_add_icon.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
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
                      '${product.price}',
                      style: AppTextStyles.bold16.copyWith(
                        color: AppColors.orange500,
                      ),
                    ),
                    Text(
                      " / ${LocaleKeys.kilo.tr()}",
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
                CustomAddIcon(
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
                CustomAddIcon(
                  onTap: () {},
                  backgroundColor: const Color(0xffF3F5F7),
                  icon: CupertinoIcons.minus,
                  iconColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            SvgPicture.asset(
              height: 17.h,
              width: 17.w,
              fit: BoxFit.fill,
              Assets.imagesStare,
            ),
            SizedBox(
              width: 9.w,
            ),
            Text(
              '4.5',
              style: AppTextStyles.semiBold13.copyWith(
                color: const Color(0xff111719),
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Text(
              '(30+)',
              style: AppTextStyles.semiBold13.copyWith(
                color: const Color(0xff9796A1),
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Text(
              LocaleKeys.Review.tr(),
              style: AppTextStyles.bold13.copyWith(
                color: AppColors.green1_500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          product.description,
          textAlign: TextAlign.justify,
          style: AppTextStyles.regular13.copyWith(
            color: const Color(0xFF979899),
          ),
        ),
      ],
    );
  }
}
