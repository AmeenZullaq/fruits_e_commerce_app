import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 're_set_password_state.dart';

class ReSetPasswordCubit extends Cubit<ReSetPasswordState> {
  ReSetPasswordCubit(this.authRepo) : super(ReSetPasswordInitial());

  final AuthRepo authRepo;
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> createNewPassword() async {
    emit(
      ReSetPasswordLoading(),
    );
    var resulte = await authRepo.sendPasswordResetEmail(
      userEmail: emailController.text,
    );
    resulte.fold(
      (failure) {
        emit(
          ReSetPasswordFailure(errMessage: failure.errMessage),
        );
      },
      (r) {
        emit(
          ReSetPasswordSuccess(),
        );
      },
    );
  }
}
