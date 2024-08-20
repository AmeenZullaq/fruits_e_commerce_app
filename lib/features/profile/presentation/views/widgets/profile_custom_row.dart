import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ProfileCustomRow extends StatelessWidget {
  const ProfileCustomRow({
    super.key,
    required this.text,
    required this.iconName,
    this.suffixWidget,
  });

  final String text;
  final String iconName;
  final Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SymetricPadding(
          vertical: 8,
          horizontal: 4,
          child: Row(
            children: [
              SvgPicture.asset(
                height: 20.h,
                width: 20.w,
                iconName,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                text,
                style: AppTextStyles.semiBold13.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              const Spacer(),
              suffixWidget ??
                  GestureDetector(
                    onTap: () {},
                    child: Transform.rotate(
                      angle: 3.14159,
                      child: Icon(
                        color: AppColors.gray950,
                        size: 20.sp,
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                  ),
            ],
          ),
        ),
        const Divider(
          color: AppColors.gray50,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }
}
