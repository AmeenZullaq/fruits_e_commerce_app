import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class HorizontalListViewItem extends StatelessWidget {
  const HorizontalListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      height: 158.h,
      width: 342.w,
      Assets.imagesHorizontaItem,
    );
  }
}