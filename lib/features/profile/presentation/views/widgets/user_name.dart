import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserName extends StatelessWidget {
  const UserName({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.name,
          style: AppTextStyles.bold13.copyWith(
            color: const Color(0xff131F46),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          user.email,
          style: AppTextStyles.regular13.copyWith(
            color: const Color(0xff888FA0),
          ),
        ),
      ],
    );
  }
}
