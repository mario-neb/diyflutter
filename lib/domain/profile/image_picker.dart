import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/profile/profile_failure.dart';

abstract class ImagePicker {
  Future<Either<ProfileFailure, File>> pickFromCamera();

  Future<Either<ProfileFailure, File>> pickFromGallery();
}
