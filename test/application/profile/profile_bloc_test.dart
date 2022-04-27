import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:diyapp/application/profile/profile_bloc.dart';
import 'package:diyapp/domain/auth/auth_facade.dart';
import 'package:diyapp/domain/auth/user.dart';
import 'package:diyapp/domain/profile/image_picker.dart';
import 'package:diyapp/domain/profile/profile_failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'profile_bloc_test.mocks.dart';

@GenerateMocks([AuthFacade, ImagePicker])
void main() {
  late MockAuthFacade mockAuthFacade;
  late MockImagePicker mockImagePicker;
  final imageFile = File('');
  const user = User(
    username: 'mn',
    email: 'email',
  );

  const unableToPickImageFailure = ProfileFailure.unableToPickImage();

  group('ProfileBloc', () {
    late ProfileBloc profileBloc;

    setUp(() {
      mockAuthFacade = MockAuthFacade();
      mockImagePicker = MockImagePicker();
      when(mockAuthFacade.getLoggedInUser())
          .thenAnswer((_) async => some(user));
      when(mockImagePicker.pickFromCamera())
          .thenAnswer((_) async => right(imageFile));
      when(mockImagePicker.pickFromGallery())
          .thenAnswer((_) async => right(imageFile));

      profileBloc = ProfileBloc(mockAuthFacade, mockImagePicker);
    });

    tearDown(() {
      profileBloc.close();
    });

    test('initial state is correct', () {
      expect(profileBloc.state, ProfileState.initial());
    });

    blocTest<ProfileBloc, ProfileState>(
      'should call getLoggedInUser on profileRequested event',
      build: () => profileBloc,
      act: (bloc) => bloc.add(const ProfileEvent.profileRequested()),
      verify: (_) {
        verify(mockAuthFacade.getLoggedInUser()).called(1);
      },
    );

    blocTest<ProfileBloc, ProfileState>(
      'should emit [loading, failure] when getLoggedInUser returns none',
      build: () {
        when(mockAuthFacade.getLoggedInUser()).thenAnswer((_) async => none());
        return profileBloc;
      },
      act: (bloc) => bloc.add(const ProfileEvent.profileRequested()),
      expect: () => [
        const ProfileState(isLoading: true),
        const ProfileState(
          isLoading: false,
          profileFailure: ProfileFailure.unexpected(),
        ),
      ],
    );

    blocTest<ProfileBloc, ProfileState>(
      'should emit [loading, success] when getLoggedInUser returns data',
      build: () => profileBloc,
      act: (bloc) => bloc.add(const ProfileEvent.profileRequested()),
      expect: () => [
        const ProfileState(isLoading: true),
        const ProfileState(
          isLoading: false,
          user: user,
        ),
      ],
    );

    blocTest<ProfileBloc, ProfileState>(
      'should call pickFromCamera on cameraPressed event',
      build: () => profileBloc,
      act: (bloc) => bloc.add(const ProfileEvent.cameraPressed()),
      verify: (_) {
        verify(mockImagePicker.pickFromCamera()).called(1);
      },
    );

    blocTest<ProfileBloc, ProfileState>(
      'should emit [failure] when pickFromCamera returns failure',
      build: () {
        when(mockImagePicker.pickFromCamera())
            .thenAnswer((_) async => left(unableToPickImageFailure));
        return profileBloc;
      },
      act: (bloc) => bloc.add(const ProfileEvent.cameraPressed()),
      expect: () => [
        const ProfileState(
          isLoading: false,
          profileFailure: unableToPickImageFailure,
        ),
      ],
    );

    blocTest<ProfileBloc, ProfileState>(
      'should emit [success] when pickFromCamera returns data',
      build: () => profileBloc,
      act: (bloc) => bloc.add(const ProfileEvent.cameraPressed()),
      expect: () => [
        ProfileState(
          isLoading: false,
          profileImage: imageFile,
        ),
      ],
    );

    blocTest<ProfileBloc, ProfileState>(
      'should call pickFromGallery on galleryPressed event',
      build: () => profileBloc,
      act: (bloc) => bloc.add(const ProfileEvent.galleryPressed()),
      verify: (_) {
        verify(mockImagePicker.pickFromGallery()).called(1);
      },
    );

    blocTest<ProfileBloc, ProfileState>(
      'should emit [failure] when pickFromGallery returns failure',
      build: () {
        when(mockImagePicker.pickFromGallery())
            .thenAnswer((_) async => left(unableToPickImageFailure));
        return profileBloc;
      },
      act: (bloc) => bloc.add(const ProfileEvent.galleryPressed()),
      expect: () => [
        const ProfileState(
          isLoading: false,
          profileFailure: unableToPickImageFailure,
        ),
      ],
    );

    blocTest<ProfileBloc, ProfileState>(
      'should emit [success] when pickFromGallery returns data',
      build: () => profileBloc,
      act: (bloc) => bloc.add(const ProfileEvent.galleryPressed()),
      expect: () => [
        ProfileState(
          isLoading: false,
          profileImage: imageFile,
        ),
      ],
    );
  });
}
