import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  Dio get dio {
    final _dio = Dio();
    _dio.options.connectTimeout = 30000; // 30s
    _dio.interceptors.addAll([
      LogInterceptor(
        responseBody: true,
        error: true,
        requestHeader: true,
        responseHeader: true,
        request: true,
        requestBody: true,
      ),
    ]);
    return _dio;
  }
}
