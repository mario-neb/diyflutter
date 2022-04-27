import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/core/apps_launcher.dart';
import 'package:diyapp/domain/settings/contact/launch_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@Injectable(as: AppsLauncher)
class AppsLauncherImpl implements AppsLauncher {
  @override
  Future<Either<LaunchFailure, Unit>> launchEmailAppWith(
      {required String email}) async {
    final url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
      return right(unit);
    } else {
      return left(const LaunchFailure.unableToOpenEmailApp());
    }
  }

  @override
  Future<Either<LaunchFailure, Unit>> launchBrowserAppWith(
      {required String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
      return right(unit);
    } else {
      return left(const LaunchFailure.unableToOpenBrowserApp());
    }
  }

  @override
  Future<Either<LaunchFailure, Unit>> launchPhoneDialerAppWith(
      {required String phoneNumber}) async {
    final url = 'tel://$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
      return right(unit);
    } else {
      return left(const LaunchFailure.unableToOpenPhoneDialerApp());
    }
  }
}
