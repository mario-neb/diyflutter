import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/profile/image_picker.dart';
import 'package:diyapp/domain/profile/profile_failure.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:image_picker/image_picker.dart' as picker;
import 'package:injectable/injectable.dart';

@Injectable(as: ImagePicker)
class ImagePickerImpl implements ImagePicker {
  final _picker = picker.ImagePicker();

  @override
  Future<Either<ProfileFailure, File>> pickFromCamera() {
    return _getImageFrom(picker.ImageSource.camera);
  }

  @override
  Future<Either<ProfileFailure, File>> pickFromGallery() async {
    return _getImageFrom(picker.ImageSource.gallery);
  }

  Future<Either<ProfileFailure, File>> _getImageFrom(
      picker.ImageSource source) async {
    final image = await _picker.getImage(
      source: source,
      imageQuality: Constants.imageQuality,
    );
    if (image != null) {
      return right(File(image.path));
    } else {
      return left(const ProfileFailure.unexpected());
    }
  }
}
