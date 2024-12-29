import 'package:e_commerce_app/core/helper_functions/get_dummy_user.dart';
import 'package:e_commerce_app/core/widgets/custom_error_widget.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/get_user_info_cubit/get_user_info_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/user_name.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserNameBlocBuilder extends StatelessWidget {
  const UserNameBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          InjectionContainer.getIt.get<GetUserInfoCubit>()..getUserInfo(),
      child: BlocBuilder<GetUserInfoCubit, GetUserInfoState>(
        builder: (context, state) {
          if (state is GetUserInfoFailure) {
            return CustomErrorWidget(text: state.errMessage);
          } else if (state is GetUserInfoSuccess) {
            return UserName(
              user: state.user,
            );
          } else {
            return Skeletonizer(
              child: UserName(
                user: getDummyUser(),
              ),
            );
          }
        },
      ),
    );
  }
}
