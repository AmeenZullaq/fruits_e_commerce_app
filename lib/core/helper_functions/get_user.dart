import 'dart:convert';
import 'package:e_commerce_app/core/constants/app_keys.dart';
import 'package:e_commerce_app/core/entities/user_entity.dart';
import 'package:e_commerce_app/core/models/user_model.dart';
import 'package:e_commerce_app/core/services/shared_preferences.dart';

UserEntity getUser() {
  final jsonString = SharedPrefs.getString(AppKeys.userData);
  UserEntity user = UserModel.fromJson(
    jsonDecode(jsonString!),
  );
  return user;
}
