import 'package:e_commerce_app/core/helper_functions/showing_bottom_sheet.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/products_view_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SortedIcon extends StatelessWidget {
  const SortedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showingBottomSheet(
          context,
          widget: const ProductsViewBottomSheet(),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 6.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(
            color: const Color(0xffCACECE).withOpacity(.4),
          ),
        ),
        child: SvgPicture.asset(
          width: 20.w,
          height: 20.h,
          Assets.imagesArrowSwapHorizontal,
        ),
      ),
    );
  }
}
