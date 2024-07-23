part of 'sing_in_cubit.dart';

@immutable
abstract class SingInState {}

final class SingInInitial extends SingInState {}

final class SingInLoading extends SingInState {}

final class SingInFailure extends SingInState {
  final String errMessage;

  SingInFailure({required this.errMessage});
}

final class SingInSuccess extends SingInState {
  final UserEntity user;

  SingInSuccess({required this.user});
}
