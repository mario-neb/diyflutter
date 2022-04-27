import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class ImagePickerModalBottomSheet extends StatelessWidget {
  const ImagePickerModalBottomSheet({
    Key? key,
    this.onCameraPressed,
    this.onGalleryPressed,
  }) : super(key: key);

  final VoidCallback? onCameraPressed;
  final VoidCallback? onGalleryPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.photo_camera),
          title: Text(
            AppLocalizationsKey.takePhoto.translate(context),
            style: const TextStyle(
              fontFamily: Fonts.amalia,
            ),
          ),
          onTap: () {
            onCameraPressed!();
            context.navigator.pop();
          },
        ),
        ListTile(
          leading: const Icon(Icons.photo_library),
          title: Text(
            AppLocalizationsKey.chooseFromGallery.translate(context),
            style: const TextStyle(
              fontFamily: Fonts.amalia,
            ),
          ),
          onTap: () {
            onGalleryPressed!();
            context.navigator.pop();
          },
        ),
      ],
    );
  }
}
