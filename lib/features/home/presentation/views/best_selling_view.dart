import 'package:e_commerce_app/features/home/presentation/cubits/get_best_selling_products_cubit/get_best_selling_products_cubit.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/best_selling_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key, required this.getBestSellingProductsCubit});

  final GetBestSellingProductsCubit getBestSellingProductsCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getBestSellingProductsCubit,
      child: const Scaffold(
        body: SafeArea(
          child: BestSellingViewBody(),
        ),
      ),
    );
  }
}
