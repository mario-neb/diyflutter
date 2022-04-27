import 'package:diyapp/domain/core/encrypter.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:injectable/injectable.dart';

@Injectable(as: Encrypter)
class EncrypterImpl implements Encrypter {
  EncrypterImpl(this._encrypter);

  final encrypt.Encrypter _encrypter;
  final iv = encrypt.IV.fromLength(16);

  @override
  String encryptAndReturnInBase64(String value) {
    return _encrypter.encrypt(value, iv: iv).base64;
  }

  @override
  String decryptFromBase64(String value) {
    return _encrypter.decrypt64(value, iv: iv);
  }
}
