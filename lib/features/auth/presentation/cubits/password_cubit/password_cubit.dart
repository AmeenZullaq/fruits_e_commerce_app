import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit(this.authRepo) : super(PasswordInitial());

  final AuthRepo authRepo;
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> createNewPassword() async {
    emit(
      PasswordLoading(),
    );
    var resulte = await authRepo.createNewPassword(
      userEmail: emailController.text,
    );
    resulte.fold(
      (failure) {
        emit(
          PasswordFailure(errMessage: failure.errMessage),
        );
      },
      (_) {
        emit(
          PasswordSuccess(),
        );
      },
    );
  }
}
