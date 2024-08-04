import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/data/models/item_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class DetailsGridViewItem extends StatelessWidget {
  const DetailsGridViewItem({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: const Color(0xffF1F1F5),
        ),
      ),
      child: IntrinsicHeight(
        child: ListTile(
          title: BottomPadding(
            bottom: 4,
            child: Text(
              item.title.tr(),
              style: AppTextStyles.bold16.copyWith(
                color: const Color(0xFF23AA49),
              ),
            ),
          ),
          subtitle: Text(
            item.subTitle.tr(),
            style: AppTextStyles.semiBold13.copyWith(
              color: const Color(0xFF979899),
            ),
          ),
          trailing: SvgPicture.asset(
            height: 35.h,
            width: 35.w,
            item.trailing,
          ),
        ),
      ),
    );
  }
}
