import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserName extends StatelessWidget {
  const UserName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'أحمد ياسر',
          style: AppTextStyles.bold13.copyWith(
            color: const Color(0xff131F46),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'mail@mail.com',
          style: AppTextStyles.regular13.copyWith(
            color: const Color(0xff888FA0),
          ),
        ),
      ],
    );
  }
}
