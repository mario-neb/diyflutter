import 'package:diyapp/domain/auth/credentials_repository.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CredentialsRepository)
class CredentialsRepositoryImpl implements CredentialsRepository {
  CredentialsRepositoryImpl(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> save({required String email, required String password}) async {
    _secureStorage.write(key: Constants.emailKey, value: email);
    _secureStorage.write(key: Constants.pinKey, value: password);
  }

  @override
  Future<String?> getEmail() async =>
      _secureStorage.read(key: Constants.emailKey);

  @override
  Future<String?> getPassword() async =>
      _secureStorage.read(key: Constants.pinKey);

  @override
  Future<String?> checkIfDocumentSent() async {
    final String? docSent =
        await _secureStorage.read(key: Constants.documentKey);
    if (docSent == null) {
      return 'false';
    } else {
      return docSent;
    }
  }

  @override
  Future<void> saveDocumentsSentStatus({required String documentStatus}) async {
    _secureStorage.write(key: Constants.documentKey, value: documentStatus);
  }

  @override
  Future<void> clear() => _secureStorage.deleteAll();
}
