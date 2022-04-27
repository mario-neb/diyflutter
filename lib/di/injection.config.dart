// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:encrypt/encrypt.dart' as _i11;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i21;
import 'package:shared_preferences/shared_preferences.dart' as _i26;

import '../application/auth/auth_bloc.dart' as _i43;
import '../application/discover/discover_bloc.dart' as _i30;
import '../application/forgot_password/forgot_password_bloc.dart' as _i37;
import '../application/form_example/form/form_bloc.dart' as _i15;
import '../application/form_example/form_example_bloc.dart' as _i16;
import '../application/form_example/review/review_bloc.dart' as _i25;
import '../application/locale/locale_bloc.dart' as _i39;
import '../application/login/login_bloc.dart' as _i40;
import '../application/profile/profile_bloc.dart' as _i42;
import '../application/register/email/email_bloc.dart' as _i36;
import '../application/register/register_bloc.dart' as _i24;
import '../application/settings/contact/contact_bloc.dart' as _i7;
import '../application/settings/locale/locale_bloc.dart' as _i38;
import '../application/settings/login_method/login_method_bloc.dart' as _i41;
import '../application/settings/theme/theme_bloc.dart' as _i33;
import '../application/terms_conditions/terms/terms_bloc.dart' as _i27;
import '../domain/auth/auth_facade.dart' as _i34;
import '../domain/auth/credentials_repository.dart' as _i28;
import '../domain/core/apps_launcher.dart' as _i5;
import '../domain/core/encrypter.dart' as _i12;
import '../domain/discover/discover_repository.dart' as _i9;
import '../domain/form_example/form_example_repository.dart' as _i17;
import '../domain/profile/image_picker.dart' as _i19;
import '../domain/settings/login_method/login_method_service.dart' as _i22;
import '../domain/settings/settings_repository.dart' as _i31;
import '../infrastructure/api/api_configuration.dart' as _i3;
import '../infrastructure/api/api_configuration_dev.dart' as _i4;
import '../infrastructure/auth/auth_facade_impl.dart' as _i35;
import '../infrastructure/auth/credentials_repository_impl.dart' as _i29;
import '../infrastructure/core/apps_launcher_impl.dart' as _i6;
import '../infrastructure/core/encrypter_impl.dart' as _i13;
import '../infrastructure/discover/fake_discover_repository_impl.dart' as _i10;
import '../infrastructure/form_example/form_example_repository_impl.dart'
    as _i18;
import '../infrastructure/profile/image_picker_impl.dart' as _i20;
import '../infrastructure/settings/login_method/login_method_service_impl.dart'
    as _i23;
import '../infrastructure/settings/settings_repository_impl.dart' as _i32;
import 'modules/dio_module.dart' as _i44;
import 'modules/encrypter_module.dart' as _i45;
import 'modules/flutter_secure_storage_module.dart' as _i46;
import 'modules/local_authentication_module.dart' as _i47;
import 'modules/shared_preferences_module.dart'
    as _i48; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  final encrypterModule = _$EncrypterModule();
  final flutterSecureStorageModule = _$FlutterSecureStorageModule();
  final localAuthenticationModule = _$LocalAuthenticationModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.factory<_i3.ApiConfiguration>(() => _i4.ApiConfigurationDev());
  gh.factory<_i5.AppsLauncher>(() => _i6.AppsLauncherImpl());
  gh.factory<_i7.ContactBloc>(() => _i7.ContactBloc(get<_i5.AppsLauncher>()));
  gh.factory<_i8.Dio>(() => dioModule.dio);
  gh.lazySingleton<_i9.DiscoverRepository>(
      () => _i10.FakeDiscoverRepositoryImpl());
  gh.factory<_i11.Encrypter>(() => encrypterModule.encrypter);
  gh.factory<_i12.Encrypter>(() => _i13.EncrypterImpl(get<_i11.Encrypter>()));
  gh.factory<_i14.FlutterSecureStorage>(
      () => flutterSecureStorageModule.flutterSecureStorage);
  gh.factory<_i15.FormBloc>(() => _i15.FormBloc());
  gh.factory<_i16.FormExampleBloc>(() => _i16.FormExampleBloc());
  gh.lazySingleton<_i17.FormExampleRepository>(
      () => _i18.FormExampleRepositoryImpl());
  gh.factory<_i19.ImagePicker>(() => _i20.ImagePickerImpl());
  gh.factory<_i21.LocalAuthentication>(
      () => localAuthenticationModule.localAuthentication);
  gh.lazySingleton<_i22.LoginMethodService>(
      () => _i23.LoginMethodServiceImpl(get<_i21.LocalAuthentication>()));
  gh.factory<_i24.RegisterBloc>(() => _i24.RegisterBloc());
  gh.factory<_i25.ReviewBloc>(
      () => _i25.ReviewBloc(get<_i17.FormExampleRepository>()));
  await gh.factoryAsync<_i26.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i27.TermsBloc>(() => _i27.TermsBloc(get<_i5.AppsLauncher>()));
  gh.lazySingleton<_i28.CredentialsRepository>(
      () => _i29.CredentialsRepositoryImpl(get<_i14.FlutterSecureStorage>()));
  gh.factory<_i30.DiscoverBloc>(
      () => _i30.DiscoverBloc(get<_i9.DiscoverRepository>()));
  gh.lazySingleton<_i31.SettingsRepository>(
      () => _i32.SettingsRepositoryImpl(get<_i26.SharedPreferences>()));
  gh.factory<_i33.ThemeBloc>(
      () => _i33.ThemeBloc(get<_i31.SettingsRepository>()));
  gh.lazySingleton<_i34.AuthFacade>(
      () => _i35.AuthFacadeImpl(get<_i28.CredentialsRepository>()));
  gh.factory<_i36.EmailBloc>(() => _i36.EmailBloc(get<_i34.AuthFacade>()));
  gh.factory<_i37.ForgotPasswordBloc>(
      () => _i37.ForgotPasswordBloc(get<_i34.AuthFacade>()));
  gh.factory<_i38.LocaleBloc>(
      () => _i38.LocaleBloc(get<_i31.SettingsRepository>()));
  gh.factory<_i39.LocaleBloc>(
      () => _i39.LocaleBloc(get<_i31.SettingsRepository>()));
  gh.factory<_i40.LoginBloc>(() => _i40.LoginBloc(get<_i34.AuthFacade>()));
  gh.factory<_i41.LoginMethodBloc>(() => _i41.LoginMethodBloc(
      get<_i31.SettingsRepository>(), get<_i22.LoginMethodService>()));
  gh.factory<_i42.ProfileBloc>(
      () => _i42.ProfileBloc(get<_i34.AuthFacade>(), get<_i19.ImagePicker>()));
  gh.factory<_i43.AuthBloc>(() => _i43.AuthBloc(get<_i34.AuthFacade>()));
  return get;
}

class _$DioModule extends _i44.DioModule {}

class _$EncrypterModule extends _i45.EncrypterModule {}

class _$FlutterSecureStorageModule extends _i46.FlutterSecureStorageModule {}

class _$LocalAuthenticationModule extends _i47.LocalAuthenticationModule {}

class _$SharedPreferencesModule extends _i48.SharedPreferencesModule {}
