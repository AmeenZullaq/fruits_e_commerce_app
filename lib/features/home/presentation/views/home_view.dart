import 'package:e_commerce_app/features/home/presentation/cubits/get_best_selling_products_cubit/get_best_selling_products_cubit.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) =>
            InjectionContainer.getIt.get<GetBestSellingProductsCubit>()
              ..getBestSellingProducts(),
        child: const HomeViewBody(),
      ),
    );
  }
}
