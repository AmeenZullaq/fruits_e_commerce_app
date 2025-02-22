import 'package:e_commerce_app/core/error/failure.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromAuthFirebase(FirebaseAuthException e) {
    switch (e.code) {
      case 'weak-password':
        return ServerFailure(
          errMessage: LocaleKeys.The_password_provided_is_too_weak.tr(),
        );
      case 'email-already-in-use':
        return ServerFailure(
          errMessage: LocaleKeys.The_account_already_exists_for_that_email.tr(),
        );
      case 'user-not-found':
        return ServerFailure(
          errMessage: LocaleKeys.no_use_found_for_that_email.tr(),
        );
      case 'wrong-password':
        return ServerFailure(
          errMessage: LocaleKeys.wrong_password_provided_for_that_user.tr(),
        );
      case 'network-request-failed':
        return ServerFailure(
          errMessage:
              LocaleKeys.make_sure_you_are_connected_to_the_Internet.tr(),
        );
      case 'account-exists-with-different-credential':
        return ServerFailure(
          errMessage: LocaleKeys
              .an_account_already_exists_with_a_different_credential
              .tr(),
        );
      case 'invalid-credential':
        return ServerFailure(
          errMessage: LocaleKeys.the_password_or_mail_is_incorrect.tr(),
        );
      case 'too-many-requests':
        return ServerFailure(
          errMessage: LocaleKeys.too_man_yrequests_Try_again_later.tr(),
        );
      case 'invalid-phone-number':
        return ServerFailure(
          errMessage: LocaleKeys.invalid_phone_number,
        );

      case 'requires-recent-login':
        return ServerFailure(
          errMessage: LocaleKeys
              .please_re_authenticate_by_logging_in_again_to_perform_this_action,
        );

      default:
        return ServerFailure(
          errMessage: LocaleKeys.An_error_occurred_Please_try_again_later.tr(),
        );
    }
  }

  factory ServerFailure.fromFirestore(FirebaseException e) {
    switch (e.code) {
      case 'not-found':
        return ServerFailure(
          errMessage: 'document not found',
        );
      case 'permission-denied':
        return ServerFailure(
          errMessage: 'permission denied',
        );
      case 'unavailable':
        return ServerFailure(
          errMessage: 'service unavailable',
        );
      case 'cancelled':
        return ServerFailure(
          errMessage: 'request cancelled',
        );
      case 'deadline-exceeded':
        return ServerFailure(
          errMessage: 'deadline exceeded',
        );
      default:
        return ServerFailure(
          errMessage: 'Ane rroro ccurredP leaset rya gainl ater',
        );
    }
  }

  factory ServerFailure.fromFirebaseStorage(FirebaseException e) {
    switch (e.code) {
      case 'object-not-found':
        return ServerFailure(
          errMessage: 'file not found',
        );
      case 'unauthorized':
        return ServerFailure(
          errMessage: 'unauthorized access',
        );
      case 'cancelled':
        return ServerFailure(
          errMessage: 'upload cancelled',
        );
      case 'invalid-checksum':
        return ServerFailure(
          errMessage: 'invalid file checksum',
        );
      case 'unknown':
        return ServerFailure(
          errMessage: 'unknown error occurred',
        );
      default:
        return ServerFailure(
          errMessage: 'Ane rroro ccurredP leaset rya gainl ater',
        );
    }
  }
}
