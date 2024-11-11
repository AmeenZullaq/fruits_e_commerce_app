import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData({
    required String path,
    required String uid,
  }) async {
    var data = await firestore.collection(path).doc(uid).get();
    return UserModel.fromJson(data.data() as Map<String, dynamic>);
  }

  @override
  Future<void> deleteData({
    required String path,
    required String docPath,
  }) async {
    await firestore.collection(path).doc(docPath).delete();
  }
}
