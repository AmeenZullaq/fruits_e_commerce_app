import 'dart:io';
import 'package:image_picker/image_picker.dart';

Future<File?> pickImage(ImageSource source) async {
  ImagePicker imagePicker = ImagePicker();
  var pickedImage = await imagePicker.pickImage(source: source);
  if (pickedImage != null) {
    return File(pickedImage.path);
  }
  return null;
}
