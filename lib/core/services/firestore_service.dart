import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/domain/entites/user_entity.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String collectionPath,
    required Map<String, dynamic> data,
  }) async {
    await firestore.collection(collectionPath).add(data);
  }

  @override
  Future<UserEntity> getData({
    required String collectionPath,
    required String docPath,
  }) async {
    var data = await firestore.collection(collectionPath).doc(docPath).get();
    return UserModel.fromJson(data.data() as Map<String, dynamic>);
  }
}
