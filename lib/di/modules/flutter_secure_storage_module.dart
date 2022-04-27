import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FlutterSecureStorageModule {
  FlutterSecureStorage get flutterSecureStorage {
    return const FlutterSecureStorage();
  }
}
