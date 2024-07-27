part of 're_set_password_cubit.dart';

abstract class ReSetPasswordState {}

final class ReSetPasswordInitial extends ReSetPasswordState {}

final class ReSetPasswordLoading extends ReSetPasswordState {}

final class ReSetPasswordSuccess extends ReSetPasswordState {}

final class ReSetPasswordFailure extends ReSetPasswordState {
  final String errMessage;
  ReSetPasswordFailure({required this.errMessage});
}
