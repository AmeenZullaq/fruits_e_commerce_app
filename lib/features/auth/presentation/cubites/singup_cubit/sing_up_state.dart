part of 'sing_up_cubit.dart';

@immutable
abstract class SingUpState {}

final class SingUpInitial extends SingUpState {}

final class SingUpLoading extends SingUpState {}

final class SingUpFailure extends SingUpState {
  final String errMessage;

  SingUpFailure({required this.errMessage});
}

final class SingUpSuccess extends SingUpState {
  final UserEntity user;

  SingUpSuccess({required this.user});
}
