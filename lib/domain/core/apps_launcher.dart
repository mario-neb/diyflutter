import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/settings/contact/launch_failure.dart';

abstract class AppsLauncher {
  Future<Either<LaunchFailure, Unit>> launchEmailAppWith(
      {required String email});

  Future<Either<LaunchFailure, Unit>> launchBrowserAppWith(
      {required String url});

  Future<Either<LaunchFailure, Unit>> launchPhoneDialerAppWith(
      {required String phoneNumber});
}
