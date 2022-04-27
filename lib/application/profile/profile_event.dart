part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.profileRequested() = ProfileRequested;

  const factory ProfileEvent.cameraPressed() = CameraPressed;

  const factory ProfileEvent.galleryPressed() = GalleryPressed;
}
