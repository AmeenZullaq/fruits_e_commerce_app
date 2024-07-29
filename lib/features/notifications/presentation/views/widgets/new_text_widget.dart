import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewTextWidget extends StatelessWidget {
  const NewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: Row(
        children: [
          Text(
            LocaleKeys.n_ew.tr(),
            style: AppTextStyles.bold16.copyWith(
              color: AppColors.gray950,
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          CircleAvatar(
            radius: 11.r,
            backgroundColor: AppColors.green1_50,
            child: Text(
              '2',
              style: AppTextStyles.bold13.copyWith(
                color: AppColors.green1_500,
              ),
            ),
          ),
          const Spacer(),
          Text(
            LocaleKeys.Mark_all_as_read.tr(),
            style: AppTextStyles.regular13.copyWith(
              color: AppColors.gray400,
            ),
          ),
        ],
      ),
    );
  }
}
