import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/entities/user_entity.dart';
import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/core/widgets/bell_notofications.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.user});
  final UserEntity user;
  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: Row(
        children: [
          user.imageUrl != null
              ? CircleAvatar(
                  radius: 30.r,
                  child: CachedNetworkImage(imageUrl: user.imageUrl!),
                )
              : CircleAvatar(
                  radius: 30.r,
                  backgroundImage: const AssetImage(
                    Assets.imagesDefaultHuman,
                  ),
                ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.Good_morning.tr(),
                style: AppTextStyles.regular16.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                user.name,
                style: AppTextStyles.bold16.copyWith(
                  color: AppColors.gray950,
                ),
              ),
            ],
          ),
          const Spacer(),
          const BellNotifications(),
        ],
      ),
    );
  }
}
