import 'package:e_commerce_app/core/widgets/custom_error_widget.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/upload_user_image_cubit/upload_user_image_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/user_image.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserImageBlocBuilder extends StatelessWidget {
  const UserImageBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InjectionContainer.getIt.get<UploadUserImageCubit>(),
      child: BlocBuilder<UploadUserImageCubit, UploadUserImageState>(
        builder: (context, state) {
          if (state is UploadUserImageFailure) {
            return CustomErrorWidget(text: state.errMessage);
          } else if (state is UploadUserImageSuccess) {
            return UserImage(
              imageUrl: state.imageUrl,
            );
          } else if (state is UploadUserImageLoading) {
            return const Skeletonizer(
              enabled: true,
              child: UserImage(
                imageUrl: 'https://picsum.photos/200/300',
              ),
            );
          } else {
            return const UserImage();
          }
        },
      ),
    );
  }
}
