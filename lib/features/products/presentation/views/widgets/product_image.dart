import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.productImage,
  });

  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          width: double.infinity,
          height: .5.sh,
          Assets.imagesCircleContainer,
        ),
        Row(
          children: [
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
          ],
        ),
        Container(
          height: .5.sh,
          alignment: Alignment.center,
          child: CachedNetworkImage(
            height: 200.h,
            width: 200.w,
            imageUrl: productImage,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
