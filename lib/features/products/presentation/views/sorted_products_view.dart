import 'package:e_commerce_app/core/helper_functions/build_app_bar.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/sorted_products_body.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SortedProductsView extends StatelessWidget {
  const SortedProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: LocaleKeys.Products.tr(),
        isArrowBackShow: true,
        isNotificationsShow: true,
      ),
      body: const SingleChildScrollView(
        child: SymetricPadding(
          horizontal: 16,
          child: SortedProductsBody(),
        ),
      ),
    );
  }
}
