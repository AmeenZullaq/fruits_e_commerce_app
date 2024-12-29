import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurProductsListViewItem extends StatelessWidget {
  const OurProductsListViewItem({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32.r,
          backgroundColor: const Color(0xFFF3F5F7),
          child: AllPadding(
            all: 8,
            child: CachedNetworkImage(
              imageUrl: product.imageUrl,
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          product.name,
          style: AppTextStyles.semiBold13.copyWith(
            color: AppColors.gray950,
          ),
        ),
      ],
    );
  }
}
