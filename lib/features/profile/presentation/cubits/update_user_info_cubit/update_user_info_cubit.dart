import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/services/shared_preferences.dart';
import 'package:e_commerce_app/core/constants/app_keys.dart';
import 'package:e_commerce_app/features/profile/domain/repos/profile_repo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'update_user_info_state.dart';

class UpdateUserInfoCubit extends Cubit<UpdateUserInfoState> {
  UpdateUserInfoCubit(this.profileRepo) : super(UpdateUserInfoInitial());

  /// repos
  final ProfileRepo profileRepo;

  /// controllers
  TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
      TextEditingController();
  final GlobalKey<FormState> changePasswordFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> personalInfoFormKey = GlobalKey<FormState>();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();

  /// variables
  bool isNameFieldEnabled = false;
  bool isEmailFieldEnabled = false;

  /// methods
  void initControllersValue() {
    nameController.text = SharedPrefs.getString(AppKeys.userName) ?? '';
    emailController.text = SharedPrefs.getString(AppKeys.userEmail) ?? '';
  }

  Future<void> updateUserInfo() async {
    emit(
      UpdateUserInfoLoading(),
    );
    final resulte = await profileRepo.updateUserInfo(
      newEmail: emailController.text,
      newName: nameController.text,
    );
    resulte.fold(
      (failure) {
        emit(
          UpdateUserInfoFailure(errMessage: failure.errMessage),
        );
      },
      (_) {
        emit(
          UpdateUserInfoSuccess(),
        );
      },
    );
  }

  Future<void> changePassword() async {
    emit(
      UpdateUserInfoLoading(),
    );
    final resulte = await profileRepo.updateUserPassword(
      currentPassword: currentPasswordController.text,
      newPassword: newPasswordController.text,
    );
    resulte.fold(
      (failure) {
        emit(
          UpdateUserInfoFailure(errMessage: failure.errMessage),
        );
      },
      (_) {
        emit(
          UpdateUserInfoSuccess(),
        );
      },
    );
  }
}
