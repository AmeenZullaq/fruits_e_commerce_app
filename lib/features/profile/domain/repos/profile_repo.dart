import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/core/entities/user_entity.dart';

abstract class ProfileRepo {
  Future<Either<Failure, String>> uploadUserImage({
    required File imageFile,
  });
  Future<Either<Failure, void>> updateUserInfo({
    String? newName,
    String? newEmail,
  });
  Future<Either<Failure, void>> updateUserPassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<Either<Failure, UserEntity>> getUserInfo();
}
