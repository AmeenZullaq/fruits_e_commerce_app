import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.name,
    required super.uId,
  });

  factory UserModel.fromAuthFirebase(User user) {
    return UserModel(
      email: user.email ?? '',
      name: user.displayName ?? '',
      uId: user.uid,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      name: json['name'],
      uId: json['uId'],
    );
  }
}
