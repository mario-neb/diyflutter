import 'dart:async';

import 'package:diyapp/domain/settings/login_method/login_method.dart';
import 'package:diyapp/domain/settings/login_method/login_method_service.dart';
import 'package:diyapp/domain/settings/settings_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_method_bloc.freezed.dart';
part 'login_method_event.dart';
part 'login_method_state.dart';

@injectable
class LoginMethodBloc extends Bloc<LoginMethodEvent, LoginMethodState> {
  LoginMethodBloc(
    this._settingsRepository,
    this._loginMethodService,
  ) : super(LoginMethodState.initial()) {
    _loginMethodSubscription = _settingsRepository.loginMethod.listen(
      (loginMethod) => add(LoginMethodEvent.loginMethodChanged(loginMethod)),
    );
    _loginMethodService.availableLoginMethods.then((availableLoginMethods) {
      add(LoginMethodEvent.availableLoginMethodsChanged(availableLoginMethods));
    });
  }

  final SettingsRepository _settingsRepository;
  final LoginMethodService _loginMethodService;
  StreamSubscription<LoginMethod>? _loginMethodSubscription;

  @override
  Stream<LoginMethodState> mapEventToState(
    LoginMethodEvent event,
  ) async* {
    yield* event.map(
      loginMethodChanged: (e) async* {
        yield state.copyWith(loginMethod: e.loginMethod);
      },
      loginMethodSaved: (e) async* {
        _settingsRepository.saveLoginMethod(e.loginMethod);
      },
      availableLoginMethodsChanged: (e) async* {
        yield state.copyWith(availableLoginMethods: e.availableLoginMethods);
      },
    );
  }

  @override
  Future<void> close() async {
    await _loginMethodSubscription?.cancel();
    _settingsRepository.dispose();
    return super.close();
  }
}
