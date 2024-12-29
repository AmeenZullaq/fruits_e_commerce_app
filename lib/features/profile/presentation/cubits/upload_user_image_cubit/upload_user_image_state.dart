part of 'upload_user_image_cubit.dart';

@immutable
sealed class UploadUserImageState {}

final class UploadUserImageInitial extends UploadUserImageState {}

final class UploadUserImageLoading extends UploadUserImageState {}

final class UploadUserImageFailure extends UploadUserImageState {
  final String errMessage;

  UploadUserImageFailure({required this.errMessage});
}

final class UploadUserImageSuccess extends UploadUserImageState {
  final String imageUrl;

  UploadUserImageSuccess({required this.imageUrl});
}
