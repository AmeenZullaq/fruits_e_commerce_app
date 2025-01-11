import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/core/widgets/custom_add_icon.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.cartItem,
  });

  final CartItemEntity cartItem;

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    final cartItemCubit = context.read<CartItemCubit>();
    return SymetricPadding(
      horizontal: 16,
      child: SizedBox(
        height: 92.h,
        child: Row(
          children: [
            Container(
              height: 92.h,
              width: 73.w,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F7),
              ),
              child: Expanded(
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: cartItem.product.imageUrl,
                ),
              ),
            ),
            SizedBox(
              width: 17.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cartItem.product.name,
                  style: AppTextStyles.bold13.copyWith(
                    color: const Color(0xFF06161C),
                  ),
                ),
                Text(
                  '${cartItem.getTotalwight()} ${LocaleKeys.kg.tr()}',
                  style: AppTextStyles.regular13.copyWith(
                    color: AppColors.orange500,
                  ),
                ),
                Row(
                  children: [
                    CustomAddIcon(
                      raduis: 14.r,
                      iconSize: 14.sp,
                      onTap: () {
                        cartItemCubit.increaseNumberProductInCart(
                          cartItem: cartItem,
                        );
                        cartCubit.priceOfAllProducts =
                            cartCubit.priceOfAllProducts +
                                cartItem.product.price;
                      },
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      '${cartItem.count}',
                      style: AppTextStyles.bold16.copyWith(
                        color: AppColors.gray950,
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    CustomAddIcon(
                      raduis: 14.r,
                      backgroundColor: const Color(0xFFF3F5F7),
                      icon: CupertinoIcons.minus,
                      iconSize: 14.sp,
                      iconColor: Colors.black,
                      onTap: () {
                        cartItemCubit.decreaseNumberProductInCart(
                          cartItem: cartItem,
                        );
                        cartCubit.priceOfAllProducts =
                            cartCubit.priceOfAllProducts -
                                cartItem.product.price;
                      },
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<CartCubit>()
                        .deleteProductFromCart(cartItem: cartItem);
                  },
                  child: SvgPicture.asset(
                    width: 20.w,
                    height: 20.h,
                    fit: BoxFit.fill,
                    Assets.imagesTrash,
                  ),
                ),
                Text(
                  '${cartItem.getTotalPric()} ${LocaleKeys.pound.tr()}',
                  style: AppTextStyles.bold16.copyWith(
                    color: AppColors.orange500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
        