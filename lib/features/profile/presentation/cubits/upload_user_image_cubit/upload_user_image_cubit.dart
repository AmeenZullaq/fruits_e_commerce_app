import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/profile/domain/repos/profile_repo.dart';
import 'package:meta/meta.dart';

part 'upload_user_image_state.dart';

class UploadUserImageCubit extends Cubit<UploadUserImageState> {
  UploadUserImageCubit(this.profileRepo) : super(UploadUserImageInitial());

  final ProfileRepo profileRepo;

  Future<void> uploadUserImage({required File imageFile}) async {
    emit(
      UploadUserImageLoading(),
    );
    final resulte = await profileRepo.uploadUserImage(imageFile: imageFile);
    resulte.fold(
      (failure) {
        emit(
          UploadUserImageFailure(errMessage: failure.errMessage),
        );
      },
      (imageUrl) {
        emit(
          UploadUserImageSuccess(imageUrl: imageUrl),
        );
      },
    );
  }
}
