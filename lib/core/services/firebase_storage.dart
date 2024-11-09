import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  Future<String> uploadImage({required File imageFile}) async {
    var refStorage = firebaseStorage.ref('image/$imageFile');
    await refStorage.putFile(imageFile);
    String url = await refStorage.getDownloadURL();
    return url;
  }
}
