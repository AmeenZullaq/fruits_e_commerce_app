part of 'get_user_info_cubit.dart';

@immutable
sealed class GetUserInfoState {}

final class GetUserInfoInitial extends GetUserInfoState {}

final class GetUserInfoLoading extends GetUserInfoState {}

final class GetUserInfoFailure extends GetUserInfoState {
  final String errMessage;

  GetUserInfoFailure({required this.errMessage});
}

final class GetUserInfoSuccess extends GetUserInfoState {
  final UserEntity user;

  GetUserInfoSuccess({required this.user});
}
