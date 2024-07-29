import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class BellNotifications extends StatelessWidget {
  const BellNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.notificationsView);
      },
      child: CircleAvatar(
        radius: 17.r,
        backgroundColor: AppColors.green50,
        child: SvgPicture.asset(
          width: 20.w,
          height: 20.h,
          Assets.imagesPell,
        ),
      ),
    );
  }
}
