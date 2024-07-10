import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(context,
    {required String title, IconData? leading, IconData? action}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        leading,
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyles.bold19.copyWith(
        color: AppColors.gray950,
      ),
    ),
    actions: [
      Icon(
        action,
      ),
    ],
  );
}
