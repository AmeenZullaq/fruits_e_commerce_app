import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/app_decorations.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.requestSummary.tr(),
          style: AppTextStyles.bold13,
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: EdgeInsets.all(16.r),
          decoration: AppDecorations.greyDecoration,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.subtotal.tr(),
                    style: AppTextStyles.regular13.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                  Text(
                    '${context.read<CartCubit>().priceOfAllProducts} ${LocaleKeys.pound.tr()}',
                    style: AppTextStyles.semiBold16,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.delivery.tr(),
                    style: AppTextStyles.regular13.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                  Text(
                    '40 ${LocaleKeys.pound.tr()}',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              const Divider(
                color: AppColors.gray100,
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.total.tr(),
                    style: AppTextStyles.bold16,
                  ),
                  Text(
                    '${context.read<CartCubit>().priceOfAllProducts + 40} ${LocaleKeys.pound.tr()}',
                    style: AppTextStyles.bold16,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          LocaleKeys.pleaseConfirmYourOrder.tr(),
          style: AppTextStyles.bold13,
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: EdgeInsets.all(16.r),
          decoration: AppDecorations.greyDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.deliveryAddress.tr(),
                    style: AppTextStyles.bold13,
                  ),
                  InkWell(
                    onTap: () {
                      context.read<AddOrderCubit>().pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                    },
                    child: Row(
                      children: [
                        Text(
                          LocaleKeys.modify.tr(),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SvgPicture.asset(
                          height: 18.h,
                          width: 18.w,
                          Assets.imagesAddressEdit,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.place_outlined,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    '${context.read<AddOrderCubit>().addressController.text}, ${context.read<AddOrderCubit>().floorController.text}',
                    style: AppTextStyles.regular16.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
