import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/core/helper_functions/show_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_add_icon.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.itemDetailsView,
          arguments: product,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFF3F5F7),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Stack(
          children: [
            const Icon(
              Icons.favorite_outline,
            ),
            Positioned.fill(
              top: 20.h,
              child: Column(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: product.imageUrl,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Text(
                      product.name,
                      style: AppTextStyles.semiBold13.copyWith(
                        color: AppColors.gray950,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 4,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    '${product.price}${LocaleKeys.pound.tr()}',
                                style: AppTextStyles.bold16.copyWith(
                                  color: AppColors.orange500,
                                ),
                              ),
                              TextSpan(
                                text: " / ${LocaleKeys.kilo.tr()}",
                                style: AppTextStyles.semiBold13.copyWith(
                                  color: AppColors.orange300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomAddIcon(
                          onTap: () {
                            context.read<CartCubit>().addProductToCart(
                                  productEntity: product,
                                  selectedCountOfProduct: 1,
                                );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
