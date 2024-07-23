import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'sing_in_state.dart';

class SingInCubit extends Cubit<SingInState> {
  SingInCubit(this.authRepo) : super(SingInInitial());

  final AuthRepo authRepo;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> singInwithEmailAndPassword() async {
    emit(
      SingInLoading(),
    );
    var result = await authRepo.singInwithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    result.fold(
      (failure) {
        emit(
          SingInFailure(errMessage: failure.errMessage),
        );
      },
      (user) {
        emit(
          SingInSuccess(user: user),
        );
      },
    );
  }

  Future<void> singInWithGoogle() async {
    emit(
      SingInLoading(),
    );
    var resulte = await authRepo.singInWithGoogle();
    resulte.fold(
      (failure) {
        emit(
          SingInFailure(errMessage: failure.errMessage),
        );
      },
      (user) {
        emit(
          SingInSuccess(user: user),
        );
      },
    );
  }

  Future<void> singInWithFacebook() async {
    emit(
      SingInLoading(),
    );
    var resulte = await authRepo.singInWithFacebook();
    resulte.fold(
      (failure) {
        emit(
          SingInFailure(errMessage: failure.errMessage),
        );
      },
      (user) {
        emit(
          SingInSuccess(user: user),
        );
      },
    );
  }

  Future<void> singInWithApple() async {
    emit(
      SingInLoading(),
    );
    var resulte = await authRepo.singInWithApple();
    resulte.fold(
      (failure) {
        emit(
          SingInFailure(errMessage: failure.errMessage),
        );
      },
      (user) {
        emit(
          SingInSuccess(user: user),
        );
      },
    );
  }
}
