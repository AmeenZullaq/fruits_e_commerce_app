import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/app_decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.tralling,
    required this.isSelected,
    this.onTap,
  });
  final String title, subtitle, tralling;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: AppDecorations.greyDecoration.copyWith(
          border: Border.all(
            color: isSelected ? AppColors.green1_500 : Colors.white,
          ),
        ),
        child: Row(
          children: [
            isSelected
                ? Container(
                    width: 18.w,
                    height: 18.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.green1_500,
                      border: Border.all(
                        color: Colors.white,
                        width: 4.w,
                      ),
                    ),
                  )
                : Container(
                    width: 18.w,
                    height: 18.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.gray100.withOpacity(.3),
                      border: Border.all(color: AppColors.gray500),
                    ),
                  ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: AppTextStyles.semiBold13.copyWith(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.regular13.copyWith(
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              tralling,
              style: AppTextStyles.bold13.copyWith(
                color: AppColors.green1_500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
