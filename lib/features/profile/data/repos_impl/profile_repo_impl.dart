import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/core/error/server_failure.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/features/profile/domain/repos/profile_repo.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileRepoImpl extends ProfileRepo {
  final FirebaseAuthService firebaseAuthService;

  ProfileRepoImpl(this.firebaseAuthService);
  @override
  Future<Either<Failure, Null>> logOut() async {
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
