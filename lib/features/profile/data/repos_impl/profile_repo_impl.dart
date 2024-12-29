import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/core/error/server_failure.dart';
import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/core/services/shared_preferences.dart';
import 'package:e_commerce_app/core/services/storage_service.dart';
import 'package:e_commerce_app/core/constants/app_keys.dart';
import 'package:e_commerce_app/core/constants/endoints.dart';
import 'package:e_commerce_app/core/models/user_model.dart';
import 'package:e_commerce_app/core/entities/user_entity.dart';
import 'package:e_commerce_app/features/profile/domain/repos/profile_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileRepoImpl extends ProfileRepo {
  final StorageService storageService;
  final DatabaseService databaseService;
  final FirebaseAuthService firebaseAuthService;

  ProfileRepoImpl({
    required this.firebaseAuthService,
    required this.storageService,
    required this.databaseService,
  });
  @override
  Future<Either<Failure, String>> uploadUserImage({
    required File imageFile,
  }) async {
    try {
      String imageUrl = await storageService.uploadFile(
        file: imageFile,
        path: Endpoints.images,
      );
      databaseService.addData(
        path: Endpoints.users,
        data: {
          AppKeys.userImageUrl: imageUrl,
        },
      );
      SharedPrefs.setString(AppKeys.userImageUrl, imageUrl);
      return right(imageUrl);
    } catch (e) {
      log(e.toString());
      return left(
        ServerFailure(
          errMessage: 'Failed to upload image',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUserInfo() async {
    try {
      final userInfo = await databaseService.getData(
        path: Endpoints.users,
        documentId: FirebaseAuth.instance.currentUser!.uid,
      );
      final user = UserModel.fromJson(userInfo);
      SharedPrefs.setString(AppKeys.userEmail, user.email);
      SharedPrefs.setString(AppKeys.userName, user.name);
      return right(user);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(
          ServerFailure.fromAuthFirebase(e),
        );
      } else if (e is FirebaseException) {
        return left(
          ServerFailure.fromFirestore(e),
        );
      } else {
        return left(
          ServerFailure(errMessage: 'Failed to get user info'),
        );
      }
    }
  }

  @override
  Future<Either<Failure, void>> updateUserInfo({
    String? newName,
    String? newEmail,
  }) async {
    try {
      if (newName != null) {
        await databaseService.updateData(
          path: Endpoints.users,
          documentId: FirebaseAuth.instance.currentUser!.uid,
          data: {
            'name': newName,
          },
        );
      }
      if (newEmail != null) {
        await firebaseAuthService.updateUserEmail(newEmail: newEmail);
        await databaseService.updateData(
          path: Endpoints.users,
          documentId: FirebaseAuth.instance.currentUser!.uid,
          data: {
            'email': newEmail,
          },
        );
      }
      getUserInfo();
      return right(null);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(
          ServerFailure.fromAuthFirebase(e),
        );
      } else if (e is FirebaseException) {
        return left(
          ServerFailure.fromFirestore(e),
        );
      } else {
        return left(
          ServerFailure(errMessage: 'Failed to updata data'),
        );
      }
    }
  }

  @override
  Future<Either<Failure, void>> updateUserPassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      await firebaseAuthService.reauthenticateUser(
        currentPassword: currentPassword,
      );
      FirebaseAuth.instance.currentUser!.updatePassword(newPassword);
      return right(null);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(
          ServerFailure.fromAuthFirebase(e),
        );
      } else if (e is FirebaseException) {
        return left(
          ServerFailure.fromFirestore(e),
        );
      } else {
        return left(
          ServerFailure(errMessage: 'Failed to change password'),
        );
      }
    }
  }
}
