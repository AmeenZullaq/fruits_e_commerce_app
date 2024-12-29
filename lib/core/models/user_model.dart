import 'package:e_commerce_app/core/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.name,
    required super.uId,
    super.imageUrl,
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
      imageUrl: json['imageUrl'],
    );
  }

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      email: user.email,
      name: user.name,
      uId: user.uId,
      imageUrl: user.imageUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'uId': uId,
    };
  }
}
