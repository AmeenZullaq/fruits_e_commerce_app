import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class DefaultUserImage extends StatelessWidget {
  const DefaultUserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 32.h,
      width: 32.w,
      decoration: const BoxDecoration(
        color: Color(0xffF9F9F9),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        width: 17.w,
        height: 15.h,
        Assets.imagesCamera,
      ),
    );
  }
}
