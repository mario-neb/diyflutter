import 'dart:io';

import 'package:diyapp/application/profile/profile_bloc.dart';
import 'package:diyapp/domain/auth/user.dart';
import 'package:diyapp/presentation/widgets/image_picker_modal_bottom_sheet.dart';
import 'package:diyapp/presentation/widgets/square.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
    required this.user,
    this.profileImage,
  }) : super(key: key);

  final User user;
  final File? profileImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Square(
              size: 220,
              decoration: const BoxDecoration(
                color: ApplicationColors.white,
                shape: BoxShape.circle,
              ),
              child: profileImage != null
                  ? Padding(
                      padding: const EdgeInsets.all(Dimensions.size12),
                      child: ClipOval(
                        child: Image.file(
                          profileImage!,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  : ClipOval(
                      child: Image.asset(
                        Assets.natureImageAlb2,
                        fit: BoxFit.fill,
                      ),
                    ),
            ),
            Positioned(
              right: 0,
              bottom: 15,
              child: RawMaterialButton(
                fillColor: Colors.yellow,
                onPressed: () => _showImagePickerModalBottomSheet(context),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(Dimensions.size8),
                child: const Icon(
                  Icons.camera_alt,
                  size: 45,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: Dimensions.size32),
      ],
    );
  }

  void _showImagePickerModalBottomSheet(BuildContext context) {
    final bloc = context.read<ProfileBloc>();
    showModalBottomSheet(
      context: context,
      builder: (_) => ImagePickerModalBottomSheet(
        onCameraPressed: () => bloc.add(const ProfileEvent.cameraPressed()),
        onGalleryPressed: () => bloc.add(const ProfileEvent.galleryPressed()),
      ),
    );
  }
}
