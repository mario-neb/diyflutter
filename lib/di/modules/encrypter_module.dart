import 'package:diyapp/resources/constants.dart';
import 'package:encrypt/encrypt.dart';
import 'package:injectable/injectable.dart';

@module
abstract class EncrypterModule {
  Encrypter get encrypter {
    final key = Key.fromUtf8(Constants.encriptionKey);
    return Encrypter(AES(key));
  }
}
