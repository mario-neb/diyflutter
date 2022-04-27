import 'package:diyapp/infrastructure/api/api_configuration.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ApiConfiguration) // TODO: add env: ['dev']
class ApiConfigurationDev implements ApiConfiguration {
  @override
  String get baseUrl => Constants.apiBaseUrlDev;
}
