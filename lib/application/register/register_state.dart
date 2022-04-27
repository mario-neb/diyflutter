part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required RegisterPage page,
    required RegisterPage firstPage,
    required RegisterData registerData,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        page: RegisterPage.email,
        firstPage: RegisterPage.email,
        registerData: RegisterData.empty(),
      );
}

enum RegisterPage {
  email,
  finalStep,
}

extension RegisterPageExtensions on RegisterPage {
  double get progress {
    const values = RegisterPage.values;
    return (values.indexOf(this) + 1) / values.length;
  }

  RegisterPage get next {
    const values = RegisterPage.values;
    final index = math.min(values.length - 1, values.indexOf(this));
    return values[(index + 1)];
  }

  RegisterPage get previous {
    const values = RegisterPage.values;
    final index = math.max(1, values.indexOf(this));
    return values[(index - 1)];
  }
}
