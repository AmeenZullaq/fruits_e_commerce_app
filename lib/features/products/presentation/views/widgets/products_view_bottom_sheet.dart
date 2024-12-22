import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/order_by_price_widget.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsViewBottomSheet extends StatefulWidget {
  const ProductsViewBottomSheet({
    super.key,
  });

  @override
  State<ProductsViewBottomSheet> createState() =>
      _ProductsViewBottomSheetState();
}

class _ProductsViewBottomSheetState extends State<ProductsViewBottomSheet> {
  int selectedOption = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .33,
      child: SymetricPadding(
        horizontal: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LocaleKeys.Order_By.tr(),
              style: AppTextStyles.bold19.copyWith(
                color: AppColors.gray950,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            OrderByPriceWidget(
              onSelect: (onSelectedOption) {
                selectedOption = onSelectedOption;
              },
            ),
            const Spacer(),
            CustomButton(
              text: LocaleKeys.filtering,
              onTap: () {
                if (selectedOption == 0) {
                  context.read<GetProductsCubit>().getOrderedProducts();
                }
                if (selectedOption == 1) {
                  context
                      .read<GetProductsCubit>()
                      .getOrderedProducts(isDescending: true);
                }
                if (selectedOption == 2) {
                  context
                      .read<GetProductsCubit>()
                      .getOrderedProducts(orderByAlphabet: true);
                }
                Navigator.of(context).pop();
              },
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
