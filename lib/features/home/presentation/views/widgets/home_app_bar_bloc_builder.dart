import 'package:e_commerce_app/features/profile/presentation/cubits/get_user_info_cubit/get_user_info_cubit.dart';
import 'package:e_commerce_app/core/helper_functions/get_dummy_user.dart';
import 'package:e_commerce_app/core/widgets/custom_error_widget.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeAppBarBlocBuilder extends StatelessWidget {
  const HomeAppBarBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUserInfoCubit, GetUserInfoState>(
      builder: (context, state) {
        if (state is GetUserInfoFailure) {
          return CustomErrorWidget(text: state.errMessage);
        } else if (state is GetUserInfoSuccess) {
          return HomeAppBar(
            user: state.user,
          );
        } else {
          return Skeletonizer(
            enabled: true,
            child: HomeAppBar(
              user: getDummyUser(),
            ),
          );
        }
      },
    );
  }
}
