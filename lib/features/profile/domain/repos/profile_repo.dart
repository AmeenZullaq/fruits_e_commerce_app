import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failure.dart';

abstract class ProfileRepo {
  Future<Either<Failure, Null>> logOut();
  // Future<Either<Failure, String>> putImage({required File imageFile});
}
