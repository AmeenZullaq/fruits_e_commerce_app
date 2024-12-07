import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/core/error/server_failure.dart';
import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/core/services/shared_prefrences.dart';
import 'package:e_commerce_app/core/utils/app_keys.dart';
import 'package:e_commerce_app/core/utils/endoints.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService dataBaseService;

  AuthRepoImpl(this.firebaseAuthService, this.dataBaseService);

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    User? userCred;
    try {
      userCred = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = UserModel.fromAuthFirebase(userCred);
      await addUserData(user: user);
      return right(user);
    } catch (e) {
      deleteUser(userCred);
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
      User userCred = await firebaseAuthService.singInwithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = await getUserData(userId: userCred.uid);
      return right(user);
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
  Future<Either<Failure, UserEntity>> singInWithGoogle() async {
    User? userCreed;
    try {
      userCreed = await firebaseAuthService.singInWithGoogle();
      final user = UserModel.fromAuthFirebase(userCreed);
      bool isExist = await dataBaseService.checkIfDataExists(
        path: Endpoints.users,
        docuementId: userCreed.uid,
      );
      if (isExist) {
        await getUserData(userId: userCreed.uid);
      } else {
        await addUserData(user: user);
      }
      return right(user);
    } catch (e) {
      deleteUser(userCreed);
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
  Future<Either<Failure, UserEntity>> singInWithFacebook() async {
    User? userCreed;
    try {
      userCreed = await firebaseAuthService.singInWithGoogle();
      final user = UserModel.fromAuthFirebase(userCreed);
      await addUserData(user: user);
      return right(user);
    } catch (e) {
      deleteUser(userCreed);
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
  Future<Either<Failure, UserEntity>> singInWithApple() async {
    User? userCreed;
    try {
      userCreed = await firebaseAuthService.singInWithGoogle();
      final user = UserModel.fromAuthFirebase(userCreed);
      await addUserData(user: user);
      return right(user);
    } catch (e) {
      deleteUser(userCreed);
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
  Future<Either<Failure, void>> sendPasswordResetEmail({
    required String userEmail,
  }) async {
    try {
      firebaseAuthService.sendPasswordResetEmail(
        userEmail: userEmail,
      );
      return right(null);
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
  Future<void> addUserData({required UserEntity user}) async {
    dataBaseService.addData(
      path: Endpoints.users,
      data: UserModel.fromEntity(user).toJson(),
      documentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String userId}) async {
    final userData = await dataBaseService.getData(
      path: Endpoints.users,
      documentId: userId,
    );
    return UserModel.fromJson(userData);
  }

  @override
  Future<void> saveUserData({required UserEntity user}) async {
    final jsonData = jsonEncode(UserModel.fromEntity(user).toJson());
    SharedPrefs.setString(AppKeys.userData, jsonData);
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  @override
  Future<Either<Failure, void>> logOut() async {
    try {
      await firebaseAuthService.logOut();
      return right(null);
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
}
