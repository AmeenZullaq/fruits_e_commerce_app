import 'package:e_commerce_app/features/home/domain/repos/product_repo.dart';
import 'package:e_commerce_app/features/home/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => GetProductsCubit(
            InjectionContainer.getIt.get<ProductRepo>(),
          )..getBestSellingProducts(),
          child: const HomeViewBody(),
        ),
      ),
    );
  }
}
