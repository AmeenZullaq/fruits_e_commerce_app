import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  SingUpCubit(this.authRepo) : super(SingUpInitial());

  final AuthRepo authRepo;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> singUp() async {
    emit(
      SingUpLoading(),
    );
    var result = await authRepo.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
      name: userNameController.text,
    );
    result.fold(
      (failure) {
        emit(
          SingUpFailure(errMessage: failure.errMessage),
        );
      },
      (user) {
        emit(
          SingUpSuccess(user: user),
        );
      },
    );
  }
}
