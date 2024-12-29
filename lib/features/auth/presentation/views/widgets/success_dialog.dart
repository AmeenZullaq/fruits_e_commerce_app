import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFFFFFFF),
      contentPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      content: SymetricPadding(
        horizontal: 50,
        vertical: 30,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.imagesCheckDialog,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              LocaleKeys.the_password_has_been_changed_successfully.tr(),
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.gray950,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
