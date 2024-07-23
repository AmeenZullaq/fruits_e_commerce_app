import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/services/shared_prefrences.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.backGroundImage,
    required this.image,
    required this.title,
    required this.subTitle,
    this.isVisible = false,
  });
  final String backGroundImage;
  final String image;
  final Widget title;
  final Widget subTitle;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          bottom: MediaQuery.sizeOf(context).height * .34,
          child: SvgPicture.asset(
            backGroundImage,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            SvgPicture.asset(
              image,
            ),
            SizedBox(
              height: 64.h,
            ),
            title,
            SizedBox(
              height: 24.h,
            ),
            subTitle,
            SizedBox(
              height: 64.h,
            ),
          ],
        ),
        Visibility(
          visible: isVisible,
          child: GestureDetector(
            onTap: () {
              Prefs.setBool(kIsOnBoardingViewSeen, true);
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.singIn,
              );
            },
            child: DynamicPadding(
              end: 16,
              start: 16,
              top: 50,
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'skip'.tr(),
                  style: AppTextStyles.regular13.copyWith(
                    color: AppColors.gray400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
