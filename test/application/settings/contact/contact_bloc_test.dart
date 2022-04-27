import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:diyapp/application/settings/contact/contact_bloc.dart';
import 'package:diyapp/domain/core/apps_launcher.dart';
import 'package:diyapp/resources/constants.dart';

import 'contact_bloc_test.mocks.dart';

@GenerateMocks([AppsLauncher])
void main() {
  late MockAppsLauncher mockAppsLauncher;

  group('ContactBloc', () {
    late ContactBloc contactBloc;

    setUp(() {
      mockAppsLauncher = MockAppsLauncher();
      when(mockAppsLauncher.launchEmailAppWith(email: anyNamed('email')))
          .thenAnswer((_) async => right(unit));
      when(mockAppsLauncher.launchBrowserAppWith(url: anyNamed('url')))
          .thenAnswer((_) async => right(unit));
      when(mockAppsLauncher.launchPhoneDialerAppWith(
              phoneNumber: anyNamed('phoneNumber')))
          .thenAnswer((_) async => right(unit));
      contactBloc = ContactBloc(mockAppsLauncher);
    });

    tearDown(() {
      contactBloc.close();
    });

    test('initial state is correct', () {
      expect(contactBloc.state, const ContactState.initial());
    });

    blocTest<ContactBloc, ContactState>(
      'should call launchEmailAppWith correct email',
      build: () => contactBloc,
      act: (bloc) => bloc.add(const ContactEvent.emailPressed()),
      verify: (_) {
        verify(mockAppsLauncher.launchEmailAppWith(
                email: Constants.applicationContactEmail))
            .called(1);
      },
    );

    blocTest<ContactBloc, ContactState>(
      'should call launchBrowserAppWith correct website url',
      build: () => contactBloc,
      act: (bloc) => bloc.add(const ContactEvent.websitePressed()),
      verify: (_) {
        verify(mockAppsLauncher.launchBrowserAppWith(
                url: Constants.applicationContactWebsite))
            .called(1);
      },
    );

    blocTest<ContactBloc, ContactState>(
      'should call launchPhoneDialerAppWith with correct phone number',
      build: () => contactBloc,
      act: (bloc) => bloc.add(const ContactEvent.phoneNumberPressed()),
      verify: (_) {
        verify(mockAppsLauncher.launchPhoneDialerAppWith(
                phoneNumber: Constants.applicationContactPhone))
            .called(1);
      },
    );
  });
}
