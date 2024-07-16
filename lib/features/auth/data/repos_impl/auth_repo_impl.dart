import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/core/error/firebase_failure.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl(this.firebaseAuthService);
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromAuthFirebase(user),
      );
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(
          ServerFailure.fromAuthFirebase(e),
        );
      }
      return left(
        ServerFailure(
          errMessage: LocaleKeys.An_error_occurred_Please_try_again_later.tr(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> singInwithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      User user = await firebaseAuthService.singInwithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromAuthFirebase(user),
      );
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(
          ServerFailure.fromAuthFirebase(e),
        );
      }
      return left(ServerFailure(
        errMessage: LocaleKeys.An_error_occurred_Please_try_again_later.tr(),
      ));
    }
  }
}
