import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/bell_notofications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(
  context, {
  required String title,
  bool isArrowBackShow = false,
  bool isNotificationsShow = false,
  void Function()? onArrowTapped,
}) {
  return AppBar(
    forceMaterialTransparency: true,
    toolbarHeight: 66.h,
    backgroundColor: Colors.white,
    leading: isArrowBackShow
        ? GestureDetector(
            onTap: onArrowTapped ??
                () {
                  Navigator.pop(context);
                },
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 22.sp,
            ),
          )
        : null,
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyles.bold19.copyWith(
        color: AppColors.gray950,
      ),
    ),
    actions: isNotificationsShow
        ? [
            const BellNotifications(),
            SizedBox(
              width: 16.w,
            ),
          ]
        : null,
  );
}
