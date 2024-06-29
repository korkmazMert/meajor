// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'package:cookie_jar/cookie_jar.dart';
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:path_provider/path_provider.dart';

const String baseUrl = 'http://10.0.2.2:8000/';
const String localhost = 'http://127.0.0.1:8000/';
final BaseOptions baseOptions = BaseOptions(
  baseUrl: baseUrl,
  connectTimeout: const Duration(seconds: 60),
  receiveTimeout: const Duration(seconds: 60),
);

class NetworkManager {
  NetworkManager._();
  Dio dio = Dio(baseOptions);
  PersistCookieJar? cookieJar;

  static NetworkManager instance = NetworkManager._();

  Future<void> initBaseService() async {
    await _initCookieJar();
    _initHeaders();
  }

  Future<void> _initCookieJar() async {
    if (cookieJar != null) {
      return;
    } else {
      final appDocDir = await getApplicationDocumentsDirectory();
      final appDocPath = appDocDir.path;

      cookieJar = PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage('$appDocPath/.cookies/'),
      );
      dio.interceptors.add(CookieManager(cookieJar!));
      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) async {
          if (options.uri.path.contains('signin')) {
            return handler.next(options); // continue with the request
          }
          final cookies = await cookieJar!.loadForRequest(options.uri);
          final csrfToken = cookies
              .firstWhere((cookie) => cookie.name == 'csrftoken',
                  orElse: () => Cookie('', ''))
              .value;
          if (csrfToken.isNotEmpty) {
            options.headers['X-CSRFToken'] = csrfToken;
          }
          return handler.next(options); // continue with the request
        },
      ));
    }
  }

  static const List<String> jwtAuthenticatedPaths = [
    'api/user/login/',
  ];

  void _initHeaders() {
    dio.interceptors.add(CurlLoggerDioInterceptor());
    dio.options.headers['Referer'] = baseUrl;
    dio.options.headers['X-Platform'] = 'mobile';
    dio.options.headers['Content-Type'] = 'application/json';
  }
}
