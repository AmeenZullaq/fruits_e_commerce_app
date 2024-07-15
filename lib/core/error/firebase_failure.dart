import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseFailure extends Failure {
  FirebaseFailure({required super.errMessage});

  factory FirebaseFailure.fromAuthFirebase(FirebaseAuthException e) {
    switch (e.code) {
      case 'weak-password':
        return FirebaseFailure(
          errMessage: LocaleKeys.The_password_provided_is_too_weak.tr(),
        );
      case 'email-already-in-use':
        return FirebaseFailure(
          errMessage: LocaleKeys.The_account_already_exists_for_that_email.tr(),
        );
      default:
        return FirebaseFailure(
          errMessage: LocaleKeys.An_error_occurred_Please_try_again_later.tr(),
        );
    }
  }
}
