import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  // Future<String> uploadImage({required File imageFile}) async {
  //   var refStorage = firebaseStorage.ref('image/$imageFile');
  //   await refStorage.putFile(imageFile);
  //   String url = await refStorage.getDownloadURL();
  //   return url;
  // }
}

// final storageRef = FirebaseStorage.instance.ref();
// @override
// Future<String> uploadFile({required File file, required String path}) async {
//   // get the name of the file.
//   String fileName = basename(file.path);
//   // get the extension of the file, like png.
//   String fileExtension = extension(file.path);
//   final fileRef = storageRef.child('$path/$fileName.$fileExtension');
//   await fileRef.putFile(file);
//   String fileUrl = await fileRef.getDownloadURL();
//   return fileUrl;
// }
