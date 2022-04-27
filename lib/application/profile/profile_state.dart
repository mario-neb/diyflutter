part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    User? user,
    File? profileImage,
    required bool isLoading,
    ProfileFailure? profileFailure,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(isLoading: false);
}
