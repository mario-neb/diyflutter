import 'dart:async';

import 'package:diyapp/domain/core/apps_launcher.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contact_bloc.freezed.dart';
part 'contact_event.dart';
part 'contact_state.dart';

@injectable
class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc(this._appsLauncher) : super(const ContactState.initial());

  final AppsLauncher _appsLauncher;

  @override
  Stream<ContactState> mapEventToState(
    ContactEvent event,
  ) async* {
    yield* event.map(
      emailPressed: (e) async* {
        _appsLauncher.launchEmailAppWith(
          email: Constants.applicationContactEmail,
        );
      },
      websitePressed: (e) async* {
        _appsLauncher.launchBrowserAppWith(
          url: Constants.applicationContactWebsite,
        );
      },
      phoneNumberPressed: (e) async* {
        _appsLauncher.launchPhoneDialerAppWith(
          phoneNumber: Constants.applicationContactPhone,
        );
      },
    );
  }
}
