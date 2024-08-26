import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';

abstract class DatabaseService {
  Future<void> addData({
    required String collectionPath,
    required Map<String, dynamic> data,
  });

  Future<UserEntity> getData({
    required String collectionPath,
    required String docPath,
  });

  Future<void> deleteData({
    required String collectionPath,
    required String docPath,
  });
}
