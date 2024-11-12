import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<Failure, UserEntity>> singInwithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, Null>> sendPasswordResetEmail({
    required String userEmail,
  });

  Future<Either<Failure, UserEntity>> singInWithGoogle();

  Future<void> addUserData({required UserEntity user});
  
  Future<void> saveUserData({required UserEntity user});

  Future<UserEntity> getUserData({required String userId});

  Future<Either<Failure, UserEntity>> singInWithFacebook();

  Future<Either<Failure, UserEntity>> singInWithApple();
}
