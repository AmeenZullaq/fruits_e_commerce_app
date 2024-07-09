import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.iconName,
    required this.text,
    required this.onTap,
  });

  final String iconName;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          bottom: 17.h,
          top: 17.h,
          start: 17.w,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFDDDFDF),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconName,
              height: 20.h,
              width: 20.w,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              text.tr(),
              style: AppTextStyles.semiBold16.copyWith(
                color: AppColors.gray950,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
