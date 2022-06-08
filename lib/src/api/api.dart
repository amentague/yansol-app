import 'package:dio/dio.dart';
import 'package:yansol/src/api/base_url.dart';

class Api {
  final dio = createDio();
  final tokenDio = Dio(BaseOptions(baseUrl: BaseUrl.url));

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: BaseUrl.url,
      receiveTimeout: 15000, // 15 seconds
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));

    // dio.interceptors.addAll({
    //   AppInterceptors(dio),
    // });
    return dio;
  }
}

