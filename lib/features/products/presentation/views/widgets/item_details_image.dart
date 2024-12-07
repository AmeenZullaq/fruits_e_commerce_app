import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ItemDetailsImage extends StatelessWidget {
  const ItemDetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .5,
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * .5,
            child: SvgPicture.asset(
              fit: BoxFit.fill,
              Assets.imagesCircle,
            ),
          ),
          TopPadding(
            top: 24,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 22.sp,
              ),
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              height: 167.h,
              width: 221.w,
              fit: BoxFit.fill,
              Assets.imagesStrawPerryPng,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
