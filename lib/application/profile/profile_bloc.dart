import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:diyapp/domain/auth/auth_facade.dart';
import 'package:diyapp/domain/auth/user.dart';
import 'package:diyapp/domain/profile/image_picker.dart';
import 'package:diyapp/domain/profile/profile_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._authFacade,
    this._imagePicker,
  ) : super(ProfileState.initial());

  final AuthFacade _authFacade;
  final ImagePicker _imagePicker;

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.map(
      profileRequested: _mapProfileRequestedEventToState,
      cameraPressed: _mapCameraPressedToState,
      galleryPressed: _mapGalleryPressedToState,
    );
  }

  Stream<ProfileState> _mapProfileRequestedEventToState(
      ProfileRequested event) async* {
    yield state.copyWith(isLoading: true);
    final userOption = await _authFacade.getLoggedInUser();
    yield userOption.fold(
      () => state.copyWith(
        profileFailure: const ProfileFailure.unexpected(),
        isLoading: false,
      ),
      (user) => state.copyWith(
        user: user,
        isLoading: false,
      ),
    );
  }

  Stream<ProfileState> _mapCameraPressedToState(CameraPressed event) async* {
    final imageOrFailure = await _imagePicker.pickFromCamera();
    yield imageOrFailure.fold(
      (f) => state.copyWith(
          profileFailure: const ProfileFailure.unableToPickImage()),
      (image) => state.copyWith(profileImage: image),
    );
  }

  Stream<ProfileState> _mapGalleryPressedToState(GalleryPressed event) async* {
    final imageOrFailure = await _imagePicker.pickFromGallery();
    yield imageOrFailure.fold(
      (f) => state.copyWith(
          profileFailure: const ProfileFailure.unableToPickImage()),
      (image) => state.copyWith(profileImage: image),
    );
  }
}
